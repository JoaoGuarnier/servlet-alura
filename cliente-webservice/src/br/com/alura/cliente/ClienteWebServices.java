package br.com.alura.cliente;

import java.io.IOException;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.fluent.Request;

public class ClienteWebServices {

	public static void main(String[] args) throws Exception {

		String conteudo = Request
		.Get("http://localhost:8080/gerenciador/empresas")
		.addHeader("Accept", "application/json")
		.execute()
		.returnContent()
		.asString();
		
		System.out.println(conteudo);

	}

}
