package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class RemoveContatoLogic implements Logica {
	public String executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		long id = Long.parseLong(req.getParameter("id"));
		Contato contato = new Contato();
		contato.setId(id);
		Connection connection = (Connection) req.getAttribute("conexao");
		// PASSANDO A CONEXAO NO CONSTRUTOR
		ContatoDao dao = new ContatoDao(connection);
		dao.exclui(contato);
		System.out.println("Excluindo contato... ");
		// chamada direta nao funfa mais
		// return "lista-contatos.jsp";
		return "mvc?logica=ListaContatosLogic";
	}
}
