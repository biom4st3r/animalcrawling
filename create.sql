CREATE TABLE Villager (
    v_id INT NOT NULL AUTO_INCREMENT,
    v_name VARCHAR(25) NOT NULL, -- Max observed 22
    vs_id INT NOT NULL,
    vp_id INT NOT NULL,
    h_id INT,
    PRIMARY KEY (v_id),
    FOREIGN KEY (vs_id) REFERENCE VillagerSpecies(vs_id),
    FOREIGN KEY (vp_id) REFERENCE VillagerPersonality(vp_id),
    FOREIGN KEY (h_id) REFERENCE House(h_id)
);

CREATE TABLE VillagerSpecies (
    vs_id INT NOT NULL AUTO_INCREMENT,
    vs_spec VARCHAR(15), -- Max observed 9
    PRIMARY KEY (vs_id)
);

CREATE TABLE VillagerPersonality (
    vp_id INT NOT NULL AUTO_INCREMENT,
    vp_type VARCHAR(15), -- Max observed TODO
    PRIMARY KEY (vp_id)
);

CREATE TABLE VillagerCareer (
    vc_id INT NOT NULL AUTO_INCREMENT,
    v_id INT NOT NULL,
    c_id INT NOT NULL,
    PRIMARY KEY (vc_id),
    FOREIGN KEY (v_id) REFERENCE Villager(v_id),
    FOREIGN KEY (c_id) REFERENCE Career(c_id)
);

CREATE TABLE Career (
    c_id INT NOT NULL AUTO_INCREMENT,
    c_title VARCHAR(50), -- Arbitrary
    c_salary FLOAT,
    -- b_id, INT,
    PRIMARY KEY (c_id)
    -- FOREIGN KEY (b_id) REFERENCE Business(b_id)
);

CREATE TABLE House (
    h_id INT NOT NULL AUTO_INCREMENT,
    h_floors NOT NULL TINYINT,
    h_price NOT NULL FLOAT,
    PRIMARY KEY (h_id),
);

CREATE TABLE HousePayment (
    hp_id INT NOT NULL AUTO_INCREMENT,
    h_id INT NOT NULL,
    v_id INT NOT NULL,
    hp_amount FLOAT,
    PRIMARY KEY (hp_id),
    FOREIGN KEY (h_id) REFERENCE House(h_id)
);

CREATE TABLE BusinessWorkers (
    bw_id INT NOT NULL AUTO_INCREMENT,
    b_id INT NOT NULL,
    vc_id INT NOT NULL,
    PRIMARY KEY (bw_id),
    FOREIGN KEY (b_id) REFERENCE Business(b_id),
    FOREIGN KEY (vc_id) REFERENCE VillagerCareer(vc_id)
);

CREATE TABLE Business (
    b_id INT NOT NULL AUTO_INCREMENT,
    b_name VARCHAR(255) NOT NULL, -- Arbitrary
    PRIMARY KEY (b_id),
);

CREATE TABLE BusinessSales (
    bs_id INT NOT NULL AUTO_INCREMENT,
    b_id INT NOT NULL,
    bs_value FLOAT NOT NULL,
    PRIMARY KEY (bs_id),
    FOREIGN KEY (b_id) REFERENCE Business(b_id),
);

CREATE TABLE BusinessInfrastructure (
    b_id INT NOT NULL AUTO_INCREMENT,
    i_id INT NOT NULL,
    PRIMARY KEY (b_id),
    FOREIGN KEY (b_id) REFERENCE Business(b_id),
    FOREIGN KEY (i_id) REFERENCE Infrastructure(i_id),
);

CREATE TABLE Infrastructure (
    i_id INT NOT NULL AUTO_INCREMENT,
    i_name VARCHAR(255) NOT NULL,
    i_total_cost FLOAT NOT NULL,
    PRIMARY KEY (i_id),
);

CREATE TABLE InfrastructurePayments (
    ip_id INT NOT NULL AUTO_INCREMENT,
    i_id INT NOT NULL,
    ip_payment FLOAT NOT NULL,
    v_id INT NOT NULL,
    PRIMARY KEY (ip_id),
    FOREIGN KEY (i_id) REFERENCE Infrastructure(i_id),
    FOREIGN KEY (v_id) REFERENCE Villager(v_id)
);
