package br.net.mirante.calculadora.webservice;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;
import javax.jws.WebService;
import javax.servlet.ServletContext;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;

import org.springframework.web.context.support.WebApplicationContextUtils;

import br.net.mirante.calculadora.entity.Cargo;
import br.net.mirante.calculadora.entity.Colaborador;
import br.net.mirante.calculadora.service.CalculadoraService;

@WebService
public class CalculadoraServerImpl implements CalculadoraServer {

	@Inject
	CalculadoraService service;

	@Resource(name = "wsContext")
	private WebServiceContext wsCtxt;

	@PostConstruct
	public void init() {
		WebApplicationContextUtils
				.getWebApplicationContext(
						(ServletContext) wsCtxt.getMessageContext().get(MessageContext.SERVLET_CONTEXT))
				.getAutowireCapableBeanFactory().autowireBean(this);

	}

	public float soma(float num1, float num2) {
		return num1 + num2;
	}

	public float subtracao(float num1, float num2) {
		return num1 - num2;
	}

	public float multiplicacao(float num1, float num2) {
		return num1 * num2;
	}

	public float divisao(float num1, float num2) {
		return num1 / num2;
	}

	/* CARGO */
	@Override
	public void inserirCargo(String nome) {
		service.inserirCargo(nome);
	}

	@Override
	public List<Cargo> listarCargos() {
		return service.listarCargos();
	}

	@Override
	public Cargo buscarCargo(Integer id) {
		return service.buscarCargo(id);
	}

	@Override
	public void deletarCargo(Integer id) {
		service.deletarCargo(id);
	}

	@Override
	public void atualizarCargo(Integer id, String nome) {
		service.atualizarCargo(new Cargo(id, nome));
	}

	/* COLABORADOR */
	@Override
	public void inserirColaborador(String nome, String email, String telefone) {
		service.inserirColaborador(nome, email, telefone);
	}

	@Override
	public List<Colaborador> listarColaboradores() {
		return service.listarColaboradores();
	}

	@Override
	public Colaborador buscarColaborador(Integer id) {
		return service.buscarColaborador(id);
	}

	@Override
	public void deletarColaborador(Integer id) {
		service.deletarColaborador(id);
	}

	@Override
	public void atualizarColaborador(Integer id, String nome, String email, String telefone) {
		service.atualizarColaborador(new Colaborador(id, nome, email, telefone));
	}

}