package br.net.mirante.calculadora;

import org.springframework.orm.hibernate4.support.OpenSessionInViewFilter;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;

import javax.servlet.DispatcherType;
import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import java.util.EnumSet;

public class WebApplication implements WebApplicationInitializer {
	
	@Override
	public void onStartup(ServletContext servletContext) {
		configureSpring(servletContext);
		configureOpenSessionInView(servletContext);		
	}

    private void configureSpring(ServletContext servletContext) {
        AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(ApplicationContextConfig.class);
        servletContext.addListener(new ContextLoaderListener(rootContext));
    }

    private void configureOpenSessionInView(ServletContext servletContext) {
        FilterRegistration.Dynamic opensessioninview = servletContext.addFilter("opensessioninview", OpenSessionInViewFilter.class);
        opensessioninview.addMappingForUrlPatterns(EnumSet.allOf(DispatcherType.class), false, "/*");
    }
    
}

