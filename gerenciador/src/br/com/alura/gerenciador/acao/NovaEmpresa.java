package br.com.alura.gerenciador.acao;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alura.gerenciador.modelo.Banco;
import br.com.alura.gerenciador.modelo.Empresa;

public class NovaEmpresa implements Acao{

	public String executa(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("sdgdfgfgd");
		
		String nomeEmpresa = request.getParameter("nome");
		String dataEmpresa = request.getParameter("data");
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Date dataFormatada;
		
		try {
			dataFormatada = sdf.parse(dataEmpresa);
		} catch (ParseException e) {
			throw new ServletException(e.getMessage());
		}
		
		
		Empresa empresa = new Empresa();
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(dataFormatada);
		
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		
		request.setAttribute("empresa", nomeEmpresa);
		
		return "redirect:entrada?acao=ListaEmpresas";
		
// 		CHAMAR DISPACHER para evitar ficar adicionando varias vezes
//		RequestDispatcher rd= request.getRequestDispatcher("/listaEmpresas");
//		rd.forward(request, response);
		
	}
}
