package Servlets;


import Proxy.BanqueService;
import Proxy.BanqueService_Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "transfer", value = "/transfer")
public class TransferServlet extends HttpServlet {
    private BanqueService banqueService = new BanqueService_Service().getBanqueServicePort();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("transfer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Long fromAccount = Long.parseLong(req.getParameter("fromAccount"));
        Long toAccount = Long.parseLong(req.getParameter("toAccount"));
        double amount = Double.parseDouble(req.getParameter("amount"));

        try {
            banqueService.transfer(fromAccount, toAccount, amount);
            req.setAttribute("message", "Money transferred successfully");
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to transfer money");
        }
        req.getRequestDispatcher("transfer.jsp").forward(req, resp);
    }
}
