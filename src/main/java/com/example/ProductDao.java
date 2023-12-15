package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public class ProductDao {

    @Autowired
    SqlSession sqlSession;


    public int insertProduct(ProductVO vo) {
        LocalDateTime currentTime = LocalDateTime.now();
        vo.setItemTime(currentTime);
        vo.setRegDate(currentTime);

        return sqlSession.insert("Product.insertProduct", vo);
    }

    public int purchaseProduct(ProductVO vo) {
        vo.setItemQuantity(vo.getItemQuantity() - 1);
        return sqlSession.update("Product.updateProduct", vo);
    }



    public List<ProductVO> getProducts() {
        return sqlSession.selectList("Product.getProductList");
    }


    public ProductVO getProduct(Integer id) {
        return sqlSession.selectOne("Product.getProduct", id);
    }


    public void deleteProduct(Integer id) {
        sqlSession.delete("Product.deleteProduct", id);
    }


    public List<ProductVO> getProductsByProductName(String keyword) {
        return sqlSession.selectList("Product.getProductListByProductName", "%" + keyword + "%");
    }
}