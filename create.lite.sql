CREATE TABLE Villager (
    v_id INTEGER NOT NULL ,
    v_name TEXT NOT NULL, -- Max observed 22
    vs_id INTEGER NOT NULL,
    vp_id INTEGER NOT NULL,
    h_id INTEGER,
    PRIMARY KEY (v_id),
    FOREIGN KEY (vs_id) REFERENCES VillagerSpecies(vs_id),
    FOREIGN KEY (vp_id) REFERENCES VillagerPersonality(vp_id),
    FOREIGN KEY (h_id) REFERENCES House(h_id)
);

CREATE TABLE VillagerSpecies (
    vs_id INTEGER NOT NULL ,
    vs_spec TEXT, -- Max observed 9
    PRIMARY KEY (vs_id)
);

CREATE TABLE VillagerPersonality (
    vp_id INTEGER NOT NULL ,
    vp_type TEXT, -- Max observed TODO
    PRIMARY KEY (vp_id)
);

CREATE TABLE VillagerCareer (
    vc_id INTEGER NOT NULL ,
    v_id INTEGER NOT NULL,
    c_id INTEGER NOT NULL,
    PRIMARY KEY (vc_id),
    FOREIGN KEY (v_id) REFERENCES Villager(v_id),
    FOREIGN KEY (c_id) REFERENCES Career(c_id)
);

CREATE TABLE Career (
    c_id INTEGER NOT NULL ,
    c_title TEXT, -- Arbitrary
    c_salary REAL,
    -- b_id, INTEGER,
    PRIMARY KEY (c_id)
    -- FOREIGN KEY (b_id) REFERENCES Business(b_id)
);

CREATE TABLE House (
    h_id INTEGER NOT NULL ,
    h_floors NOT NULL INTEGER,
    h_price NOT NULL REAL,
    PRIMARY KEY (h_id),
);

CREATE TABLE HousePayment (
    hp_id INTEGER NOT NULL ,
    h_id INTEGER NOT NULL,
    v_id INTEGER NOT NULL,
    hp_amount REAL,
    PRIMARY KEY (hp_id),
    FOREIGN KEY (h_id) REFERENCES House(h_id)
);

CREATE TABLE BusinessWorkers (
    bw_id INTEGER NOT NULL ,
    b_id INTEGER NOT NULL,
    vc_id INTEGER NOT NULL,
    PRIMARY KEY (bw_id),
    FOREIGN KEY (b_id) REFERENCES Business(b_id),
    FOREIGN KEY (vc_id) REFERENCES VillagerCareer(vc_id)
);

CREATE TABLE Business (
    b_id INTEGER NOT NULL ,
    b_name TEXT NOT NULL, -- Arbitrary
    PRIMARY KEY (b_id),
);

CREATE TABLE BusinessSales (
    bs_id INTEGER NOT NULL ,
    b_id INTEGER NOT NULL,
    bs_value REAL NOT NULL,
    PRIMARY KEY (bs_id),
    FOREIGN KEY (b_id) REFERENCES Business(b_id),
);

CREATE TABLE BusinessInfrastructure (
    b_id INTEGER NOT NULL ,
    i_id INTEGER NOT NULL,
    PRIMARY KEY (b_id),
    FOREIGN KEY (b_id) REFERENCES Business(b_id),
    FOREIGN KEY (i_id) REFERENCES Infrastructure(i_id),
);

CREATE TABLE Infrastructure (
    i_id INTEGER NOT NULL ,
    i_name TEXT NOT NULL,
    i_total_cost REAL NOT NULL,
    PRIMARY KEY (i_id),
);

CREATE TABLE InfrastructurePayments (
    ip_id INTEGER NOT NULL ,
    i_id INTEGER NOT NULL,
    ip_payment REAL NOT NULL,
    v_id INTEGER NOT NULL,
    PRIMARY KEY (ip_id),
    FOREIGN KEY (i_id) REFERENCES Infrastructure(i_id),
    FOREIGN KEY (v_id) REFERENCES Villager(v_id)
);
