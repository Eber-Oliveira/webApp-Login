package br.com.eberoliveira.webApp.bean;

import java.io.Serializable;

//Classe Java com atributos privados, porém com Get e Set e Serilizavel
public class LoginBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String usuario;
	private String senha;

	// Construtor padrão vazio
	public LoginBean() {

	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	//Não faz parte do Bean, e um adendo
	//Valida se o usuario digitado é igual ao usuario esperado. Tambem senha.
	public boolean isValid() {
		
		String usuarioEsperado = "admin";
		String senhaEsperada = "admin";
		
		return usuarioEsperado.equals(usuario) && senhaEsperada.equals(senha);		
	}
}
