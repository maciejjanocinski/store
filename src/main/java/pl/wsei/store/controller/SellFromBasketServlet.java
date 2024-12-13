package pl.wsei.store.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import pl.wsei.store.service.BasketService;

import java.io.IOException;

@WebServlet(name = "SellFromBasketServlet", value = "/sell-from-basket")
public class SellFromBasketServlet extends HttpServlet {

  private BasketService basketService = new BasketService();

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String item = request.getParameter("item");
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    basketService.sellItem(item, quantity);

    response.sendRedirect(request.getContextPath() + "/basket-servlet");
  }
}
