package br.net.mirante.calculadora.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@SuppressWarnings("serial")
@Entity
@EqualsAndHashCode(of = "id")
@NoArgsConstructor
@AllArgsConstructor
@ToString(of = { "id", "nome" })
public @Data class Colaborador implements Serializable {

	@Id
	@GeneratedValue(generator = "s_colaborador", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "s_colaborador", sequenceName = "colaborador_sequence", allocationSize = 1)
	private Integer id;

	@Column(length = 255)
	private String nome;

	@Column(length = 255)
	private String email;

	@Column(length = 255)
	private String telefone;

	@ManyToOne
	private Cargo cargo;

	public Colaborador(Integer id) {
		this.id = id;
	}

	public Colaborador(String nome, String email, String telefone) {
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
	}

	public Colaborador(Integer id, String nome, String email, String telefone) {
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
	}

}
