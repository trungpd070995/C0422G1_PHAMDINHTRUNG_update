package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    void create(Product student);

    void update(int id, Product product);

    Product finById(int id);

    List<Product> findByName(String name);

    void delete(int id);
}
