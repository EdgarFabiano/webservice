package br.net.mirante.calculadora.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
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
public @Data class Cargo implements Serializable {

	@Id
	@GeneratedValue(generator = "s_cargo", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "s_cargo", sequenceName = "cargo_sequence", allocationSize = 1)
	private Integer id;

	@Column(length = 255)
	private String nome;

	@OneToMany(mappedBy = "cargo")
	private List<Colaborador> colaborador = new ArrayList<>();

	public Cargo(Integer id) {
		this.id = id;
	}

	public Cargo(String nome) {
		this.nome = nome;
	}

	public Cargo(Integer id, String nome) {
		this.id = id;
		this.nome = nome;
	}

}
