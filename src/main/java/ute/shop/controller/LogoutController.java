package ute.shop.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = { "/logout" })
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Invalidate the session to clear all session attributes
        HttpSession session = request.getSession();
        session.removeAttribute("roleString");
        session.removeAttribute("account");
        // Redirect the user to the home page or login page after logging out
        RequestDispatcher rd = request.getRequestDispatcher("/views/Home.jsp");
        rd.forward(request, response);
    }
}

