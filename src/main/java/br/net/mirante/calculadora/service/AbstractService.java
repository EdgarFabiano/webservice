package br.net.mirante.calculadora.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import javax.inject.Inject;

public abstract class AbstractService {

    @Inject
    private SessionFactory sessionFactory;

    protected Session getSession(){
        return sessionFactory.getCurrentSession();
    }
}
