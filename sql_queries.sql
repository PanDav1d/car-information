CREATE TABLE brands(
    id INT AUTO_INCREMENT,
    name VARCHAR(255),
    country VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE models(
    id INT AUTO_INCREMENT,
    brand_id INT NOT NULL,
    name VARCHAR(255),
    category VARCHAR(255),
    PRIMARY KEY (id),
    FOREIGN KEY (brand_id) REFERENCES brands(id)
);

CREATE TABLE generations(
    id INT AUTO_INCREMENT,
    model_id INT NOT NULL,
    start_year DATE,
    end_year DATE,
    PRIMARY KEY (id),
    FOREIGN KEY (model_id) REFERENCES models(id)
);
