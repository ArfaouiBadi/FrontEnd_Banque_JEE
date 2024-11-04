package Servlets;

import Proxy.BanqueService;
import Proxy.BanqueService_Service;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "convert", value = "/convert")
public class ConversionServlet extends HttpServlet {

    private BanqueService banqueService = new BanqueService_Service().getBanqueServicePort();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("conversion.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fromCurrency = req.getParameter("fromCurrency");
        String toCurrency = req.getParameter("toCurrency");
        double amount = Double.parseDouble(req.getParameter("amount"));

        try {
            double convertedAmount = banqueService.convertCurrency(amount, fromCurrency, toCurrency);
            req.setAttribute("convertedAmount", convertedAmount);
            req.setAttribute("fromCurrency", fromCurrency);
            req.setAttribute("toCurrency", toCurrency);
            req.setAttribute("amount", amount);
        } catch (Exception e) {
            e.printStackTrace();
            req.setAttribute("error", "Currency conversion failed: " + e.getMessage());
        }

        req.getRequestDispatcher("conversion.jsp").forward(req, resp);
    }
}
