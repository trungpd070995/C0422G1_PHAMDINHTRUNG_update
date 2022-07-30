package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {

    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "XiaoMi", 100, "Còn hàng", "Mi"));
        products.put(2, new Product(2, "Iphone", 200, "Hết hàng", "Apple"));
        products.put(3, new Product(3, "Galaxy", 300, "Còn hàng", "Samsung"));
        products.put(4, new Product(4, "Q-mobile", 400, "Hết hàng", "Q"));
        products.put(5, new Product(5, "Realme", 500, "Còn hàng", "Xiaomi"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void create(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public Product finById(int id) {
        return products.get(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> searchList = new ArrayList<>();
        for (Product item : findAll()) {
            if (item.getName().contains(name)) {
                searchList.add(item);
            }
        }
        return searchList;
    }

    @Override
    public void delete(int id) {
     products.remove(id);
    }
}
