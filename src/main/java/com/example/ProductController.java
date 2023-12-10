package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductDao productDao;

    @GetMapping("/products")
    public String getProducts(Model model) {
        List<ProductVO> products = productDao.getProducts();

        model.addAttribute("list", products);


        return "list";
    }


    @GetMapping("/products/{itemId}")
    public String getProducts(@PathVariable Integer itemId, Model model) {
        ProductVO product = productDao.getProduct(itemId);

        model.addAttribute("product", product);

        return "view";
    }

/*
    @GetMapping("/boards/{id}")



    public String getboard(@PathVariable Integer id, Model model) {
        BoardVO board = boardService.getBoard(id);
        model.addAttribute("board", board);
        return "view";
    }

    @GetMapping("/boards/delete/{id}")
    public String deleteBoard(@PathVariable Integer id) {
        boardService.deleteBoard(id);
        return "redirect:/boards";
    }

    @GetMapping("/boards/add")
    public String addBoard() {
        return "add";
    }

    @PostMapping("/boards/add")
    public String addBoard(BoardVO boardVO) {
        boardService.insertBoard(boardVO);
        return "redirect:/boards";
    }

    @GetMapping("/boards/update/{id}")
    public String updateBoard(@PathVariable Integer id, Model model) {
        model.addAttribute("board", boardService.getBoard(id));
        return "update";
    }

    @PostMapping("/boards/update/{id}")
    public String updateBoard(BoardVO boardVO) {
        boardService.updateBoard(boardVO);
        return "redirect:/boards";
    }
*/
}
