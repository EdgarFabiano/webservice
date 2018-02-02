package br.net.mirante.calculadora.dao;

import java.util.List;

import javax.inject.Inject;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public abstract class AbstractDAO<T> {

	@Inject
	private SessionFactory sessionFactory;

	public AbstractDAO() {
	}

	protected Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	public abstract T get(Integer id);
	
	public abstract List<T> getAll();

	@Transactional
	public abstract void remove(Integer id);

	@Transactional
	public abstract void update(T entity); 

	@Transactional
	public abstract void create(T entity);
}
