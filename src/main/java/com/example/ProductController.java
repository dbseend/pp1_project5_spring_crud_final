package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductDao productDao;

    @GetMapping("/products")
    public String getProducts(@RequestParam(required = false) String keyword, Model model) {
        List<ProductVO> products;

        if (StringUtils.hasText(keyword)) {
            products = productDao.getProductsByProductName(keyword);
        } else {
            products = productDao.getProducts();
        }

        model.addAttribute("list", products);

        return "list";
    }

    @GetMapping("/products/{itemId}")
    public String getProducts(@PathVariable Integer itemId, Model model) {
        ProductVO product = productDao.getProduct(itemId);

        model.addAttribute("product", product);

        return "view";
    }

    @GetMapping("/products/add")
    public String addProducts() {
        return "add";
    }

    @PostMapping("/products/addOk")
    public String addProducts(ProductVO productVO) {
        productDao.insertProduct(productVO);
        return "redirect:/products";
    }

    @PostMapping("/products/update/{id}")
    public String updateProducts(@PathVariable Integer id) {
        ProductVO productVO = productDao.getProduct(id);
        productDao.purchaseProduct(productVO);
        return "redirect:/products";
    }
}
