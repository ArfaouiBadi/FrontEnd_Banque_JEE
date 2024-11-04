package Servlets;

import Proxy.BanqueService;
import Proxy.BanqueService_Service;
import Proxy.Compte;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/listerAccounts")
public class ListerAccountsServlet extends HttpServlet {
    private BanqueService banqueService = new BanqueService_Service().getBanqueServicePort();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Compte> accounts = banqueService.getAccounts();
        req.setAttribute("accounts", accounts);
        req.getRequestDispatcher("/listAccounts.jsp").forward(req, resp);
    }
}
