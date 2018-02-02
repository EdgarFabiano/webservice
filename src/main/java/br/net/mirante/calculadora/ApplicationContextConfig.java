package br.net.mirante.calculadora;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.hibernate.dialect.H2Dialect;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableTransactionManagement(proxyTargetClass = true)
@ComponentScan("br.net")
@WebAppConfiguration
public class ApplicationContextConfig {

	@Bean
	protected DataSource dataSource() {
		HikariDataSource dataSource = new HikariDataSource();// NOSONAR
		dataSource.setJdbcUrl(getUrlConnection());

		dataSource.setUsername("sa");
		dataSource.setPassword("");
		dataSource.setDriverClassName("org.h2.Driver");

		return dataSource;

	}

	protected String getUrlConnection() {
		//return "jdbc:h2:tcp://localhost:9092/~/Documents/h2";
		return "jdbc:h2:./edgardb;AUTO_SERVER=TRUE;CACHE_SIZE=4096;EARLY_FILTER=1;MULTI_THREADED=1;LOCK_TIMEOUT=15000;";
	}

	@Bean
	public LocalSessionFactoryBean sessionFactory(DataSource dataSource) {
		LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
		sessionFactoryBean.setDataSource(dataSource);
		sessionFactoryBean.setHibernateProperties(this.hibernateProperties());
		sessionFactoryBean.setPackagesToScan(this.hibernatePackagesToScan());
		// SessionFactoryUtil.configureCatalogEntity(sessionFactoryBean);

		return sessionFactoryBean;
	}

	@Bean
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory, DataSource dataSource) {
		HibernateTransactionManager tx = new HibernateTransactionManager(sessionFactory);
		tx.setDataSource(dataSource);
		return tx;
	}

	protected String[] hibernatePackagesToScan() {
		return new String[] { "br.net.mirante" };
	}

	protected Properties hibernateProperties() {
		Properties hibernateProperties = new Properties();
		hibernateProperties.setProperty("hibernate.dialect", H2Dialect.class.getName());
		hibernateProperties.setProperty("hibernate.connection.isolation", "2");
		hibernateProperties.setProperty("hibernate.jdbc.batch_size", "30");
		hibernateProperties.setProperty("hibernate.show_sql", "true");
		hibernateProperties.setProperty("hibernate.format_sql", "true");
		hibernateProperties.setProperty("hibernate.enable_lazy_load_no_trans", "true");
		hibernateProperties.setProperty("hibernate.jdbc.use_get_generated_keys", "true");
		hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
		return hibernateProperties;
	}
}
