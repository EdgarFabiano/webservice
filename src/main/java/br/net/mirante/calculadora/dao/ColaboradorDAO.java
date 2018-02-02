package br.net.mirante.calculadora.dao;

import java.util.List;

import javax.inject.Named;
import javax.transaction.Transactional;

import org.hibernate.Query;

import br.net.mirante.calculadora.entity.Colaborador;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Named
public class ColaboradorDAO extends AbstractDAO<Colaborador> {

	@Override
	public Colaborador get(Integer id) {
		StringBuilder hql = new StringBuilder();
		hql.append("SELECT c")
		.append(" FROM " + Colaborador.class.getName() + " c")
		.append(" WHERE c.id =:id");
		
		Query query = getSession().createQuery(hql.toString());
		query.setParameter("id", id);

		return (Colaborador) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Colaborador> getAll() {
		StringBuilder hql = new StringBuilder();
		hql.append("SELECT c")
		.append(" FROM " + Colaborador.class.getName() + " c");
		
		Query query = getSession().createQuery(hql.toString());
		
		return query.list();
	}

	@Override
	@Transactional
	public void remove(Integer id) {
		getSession().delete(new Colaborador(id));		
	}

	@Override
	@Transactional
	public void update(Colaborador entity) {
		getSession().update(entity);			
	}

	@Override
	@Transactional
	public void create(Colaborador entity) {
		getSession().save(entity);	
	}

}
