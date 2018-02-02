package br.net.mirante.calculadora.webservice;

import javax.jws.WebService;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import br.net.mirante.calculadora.entity.Cargo;
import br.net.mirante.calculadora.entity.Colaborador;

@WebService
@SOAPBinding(style = Style.RPC)
public interface CalculadoraServer {
	@WebMethod float soma(float num1, float num2);
	@WebMethod float subtracao(float num1, float num2);
	@WebMethod float multiplicacao(float num1, float num2);
	@WebMethod float divisao(float num1, float num2);
	
	@WebMethod void inserirCargo(String nome);
	@WebMethod List<Cargo> listarCargos();
	@WebMethod Cargo buscarCargo(Integer id);
	@WebMethod void deletarCargo(Integer id);
	@WebMethod void atualizarCargo(Integer id, String nome);
	
	@WebMethod void inserirColaborador(String nome, String email, String telefone);
	@WebMethod List<Colaborador> listarColaboradores();
	@WebMethod Colaborador buscarColaborador(Integer id);
	@WebMethod void deletarColaborador(Integer id);
	@WebMethod void atualizarColaborador(Integer id, String nome, String email, String telefone);
}