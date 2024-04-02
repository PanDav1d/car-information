CREATE TABLE brands(
    id INT AUTO_INCREMENT,
    name VARCHAR(),
    country VARCHAR(),
    PRIMARY KEY(id)
);

CREATE TABLE generations(
    id INT AUTO_INCREMENT,
    model_id INT NOT NULL,
    start_year DATE,
    end_year DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (model_id) REFERENCES brands(id)
);

CREATE TABLE models(
    id INT AUTO_INCREMENT,
    brand_id INT NOT NULL,
    name VARCHAR,
    category VARCHAR,
    PRIMARY KEY (id),
    FOREIGN KEY (brand_id) REFERENCES generations(id)
);