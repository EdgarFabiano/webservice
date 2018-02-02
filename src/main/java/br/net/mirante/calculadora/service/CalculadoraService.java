package br.net.mirante.calculadora.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import br.net.mirante.calculadora.dao.CargoDAO;
import br.net.mirante.calculadora.dao.ColaboradorDAO;
import br.net.mirante.calculadora.entity.Cargo;
import br.net.mirante.calculadora.entity.Colaborador;

@Service
public class CalculadoraService extends AbstractService {

	@Inject
	CargoDAO cargoDAO;
	
	@Inject
	ColaboradorDAO colaboradorDAO;

	/*CARGO*/
	public void inserirCargo(String nome) {
		Cargo cargo = new Cargo(nome);
		cargoDAO.create(cargo);
	}
	
	public Cargo buscarCargo(Integer id) {
		return cargoDAO.get(id);
	}

	public List<Cargo> listarCargos() {
		return cargoDAO.getAll();
	}
	
	public void deletarCargo(Integer id) {
		cargoDAO.remove(id);
	}
	
	public void atualizarCargo(Cargo entity) {
		cargoDAO.update(entity);
	}
	
	
	/*COLABORADOR*/
	public void inserirColaborador(String nome, String email, String telefone) {
		Colaborador colaborador = new Colaborador(nome, email, telefone);
		colaboradorDAO.create(colaborador);
	}
	
	public Colaborador buscarColaborador(Integer id) {
		return colaboradorDAO.get(id);
	}

	public List<Colaborador> listarColaboradores() {
		return colaboradorDAO.getAll();
	}
	
	public void deletarColaborador(Integer id) {
		colaboradorDAO.remove(id);
	}
	
	public void atualizarColaborador(Colaborador entity) {
		colaboradorDAO.update(entity);
	}

}
