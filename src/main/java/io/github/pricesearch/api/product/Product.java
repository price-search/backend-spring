package io.github.pricesearch.api.product;

import lombok.Data;

@Data
public class Product {

    private String id;

    private Float value;

    private String name;
}