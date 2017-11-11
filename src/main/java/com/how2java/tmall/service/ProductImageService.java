package com.how2java.tmall.service;

import com.how2java.tmall.pojo.ProductImage;

import java.util.List;

/**
 * @author Leiziqin
 * @since 2017/11/8
 */
public interface ProductImageService {
    String TYPE_SINGLE = "type_single";
    String TYPE_DETAIL = "type_detail";

    void add(ProductImage productImage);

    void delete(int id);

    void update(ProductImage productImage);

    ProductImage get(int id);

    /**
     * 根据产品ID和图片类型查询
     *
     * @param pid  产品ID
     * @param type 图片类型
     * @return
     */
    List<ProductImage> list(int pid, String type);
}
