package br.net.mirante.calculadora.dao;

import java.util.List;

import javax.inject.Named;
import javax.transaction.Transactional;

import org.hibernate.Query;

import br.net.mirante.calculadora.entity.Cargo;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Named
public class CargoDAO extends AbstractDAO<Cargo> {
	@Override
	public Cargo get(Integer id) {
		StringBuilder hql = new StringBuilder();
		hql.append("SELECT c")
		.append(" FROM " + Cargo.class.getName() + " c")
		.append(" WHERE c.id =:id");
		
		Query query = getSession().createQuery(hql.toString());
		query.setParameter("id", id);

		return (Cargo) query.uniqueResult();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cargo> getAll() {
		StringBuilder hql = new StringBuilder();
		hql.append("SELECT c")
		.append(" FROM " + Cargo.class.getName() + " c");
		
		Query query = getSession().createQuery(hql.toString());
		
		return query.list();
	}

	@Override
	@Transactional
	public void remove(Integer id) {
		getSession().delete(new Cargo(id));
	}

	@Override
	@Transactional
	public void update(Cargo entity) {
		getSession().update(entity);

	}

	@Override
	@Transactional
	public void create(Cargo entity) {
		getSession().save(entity);

	}

}
