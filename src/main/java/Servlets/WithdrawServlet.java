package Servlets;

import Proxy.BanqueService;
import Proxy.BanqueService_Service;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "withdraw", value = "/withdraw")
public class WithdrawServlet extends HttpServlet {
    private BanqueService banqueService = new BanqueService_Service().getBanqueServicePort();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("withdraw.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("WithdrawServlet.doPost");

        Long id = Long.parseLong(req.getParameter("accountId"));
        double amount = Double.parseDouble(req.getParameter("amount"));
        try {
            banqueService.withdraw(id,amount);
            req.setAttribute("message", " Withdrawed successfully");
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Failed to transfer money");
        }
        req.getRequestDispatcher("withdraw.jsp").forward(req, resp);
    }
}


