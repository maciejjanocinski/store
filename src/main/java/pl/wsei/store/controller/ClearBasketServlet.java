package pl.wsei.store.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.wsei.store.service.BasketService;

@WebServlet(name = "ClearBasketServlet", value = "/clear-basket")
public class ClearBasketServlet extends HttpServlet {

  private final BasketService basketService = new BasketService();

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {

    try {
      basketService.clearAll();
      response.sendRedirect(request.getContextPath() + "/basket-servlet");
    } catch (Exception e) {
      throw new ServletException("Error processing request", e);
    }
  }
}
