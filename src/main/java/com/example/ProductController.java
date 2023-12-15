package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductController {
    @Autowired
    ProductDao productDao;
    @Autowired
    LoginInterceptor loginInterceptor;

    @GetMapping("")
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

    @GetMapping("/{itemId}")
    public String getProductDetails(@PathVariable Integer itemId, Model model, HttpServletRequest request, HttpServletResponse response) {
        try {
            if (!loginInterceptor.preHandle(request, response, null)) {
                // 세션이 유효하지 않은 경우 로그인 페이지로 리다이렉트
                return "redirect:/login/login";
            }

            // 세션이 유효한 경우에만 실행되는 코드
            ProductVO product = productDao.getProduct(itemId);
            model.addAttribute("product", product);
            return "view";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @GetMapping("/add")
    public String addProducts(HttpServletRequest request, HttpServletResponse response) {
        try {
            if (!loginInterceptor.preHandle(request, response, null)) {
                // 세션이 유효하지 않은 경우 로그인 페이지로 리다이렉트
                return "redirect:/login/login";
            }

            // 세션이 유효한 경우에만 실행되는 코드
            return "add";
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @PostMapping("/addOk")
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

    @GetMapping("/delete/{id}")
    public String deletePost(@PathVariable int id) {
        if (productDao.deleteProduct(id) != 0) {
            System.out.println("success");
        } else {
            System.out.println("fail");
        }

        return "redirect:../../products";
    }
}
