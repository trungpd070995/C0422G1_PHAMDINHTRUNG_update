package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> findAll();

    void create(Product product);

    void update(int id, Product product);

    Product finById(int id);

    List<Product> findByName(String name);

    void delete(int id);
}
