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

@WebServlet(name = "account", value = "/account")
public class AccountServlet extends HttpServlet {
    private BanqueService banqueService = new BanqueService_Service().getBanqueServicePort();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String clientName = req.getParameter("clientName");
        try {
            banqueService.openAccount(clientName);
            req.setAttribute("message", "Account created successfully for " + clientName);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to create account");
        }
        req.getRequestDispatcher("account.jsp").forward(req, resp);
    }
}
