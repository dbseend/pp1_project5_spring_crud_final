package com.example;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.ArrayList;
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

    public List<ProductVO> getProducts() {
        List<ProductVO> tempList = sqlSession.selectList("Product.getProductList");
        List<ProductVO> productVOList = new ArrayList<>();
        for (int i = 0; i < tempList.size(); i++) {
            if (tempList.get(i).getItemQuantity() == 0) {
                int id = tempList.get(i).getItemId();
                sqlSession.delete("Product.deleteProduct", id);
            } else {
                productVOList.add(tempList.get(i));
            }
        }
        return productVOList;
    }

    public ProductVO getProduct(Integer id) {
        return sqlSession.selectOne("Product.getProduct", id);
    }

    public int purchaseProduct(ProductVO vo) {
        vo.setItemQuantity(vo.getItemQuantity() - 1);
        return sqlSession.update("Product.updateProduct", vo);
    }

    public void updateProduct(ProductVO productVO) {
        System.out.println(productVO.getItemName());
        System.out.println(productVO.getItemId());
        sqlSession.update("Product.updateProduct", productVO);
    }

    public int deleteProduct(Integer id) {
        return sqlSession.delete("Product.deleteProduct", id);
    }

    public List<ProductVO> getProductsByProductName(String keyword) {
        return sqlSession.selectList("Product.getProductListByProductName", "%" + keyword + "%");
    }
}