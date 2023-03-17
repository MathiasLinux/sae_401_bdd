CREATE TABLE IF NOT EXISTS user (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255),
    password VARCHAR(255),
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    rights SET('superadmin', 'editor', 'management', 'jobs', 'admin')
);

CREATE TABLE IF NOT EXISTS escapeGame (
    id_escapeGame INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    nameFR VARCHAR(64),
    puzzles INT,
    adventures INT,
    spots INT,
    story INT,
    description TEXT,
    descriptionFR TEXT,
    address VARCHAR(255),
    visible BOOLEAN,
    price2_3Persons FLOAT,
    price4Persons FLOAT,
    price5Persons FLOAT,
    price6Persons FLOAT,
    price7Persons FLOAT,
    price8Persons FLOAT,
    price9Persons FLOAT,
    price10Persons FLOAT,
    price11Persons FLOAT,
    price12Persons FLOAT,
    price12PlusPersons FLOAT
);

CREATE TABLE IF NOT EXISTS giftCardAmount (
    id_giftCardAmount INT PRIMARY KEY AUTO_INCREMENT,
    price FLOAT
);

CREATE TABLE IF NOT EXISTS qAndACat (
    id_qAndACat INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    titleFR VARCHAR(255),
    id_escapeGame INT REFERENCES escapeGame(id_escapeGame)
);

CREATE TABLE IF NOT EXISTS qAndAQuestion (
    id_qAndAQuestion INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    titleFR VARCHAR(255),
    answer TEXT,
    answerFR TEXT,
    id_qAndACat INT REFERENCES qAndACat(id_qAndACat)
);

CREATE TABLE IF NOT EXISTS giftCard (
    id_giftCard INT PRIMARY KEY AUTO_INCREMENT,
    buyingDate DATE,
    type ENUM('money', 'escapeGame'),
    code VARCHAR(32),
    usageDate DATE,
    id_giftCardAmount INT REFERENCES giftCardAmount(id_giftCardAmount),
    id_escapeGame INT REFERENCES escapeGame(id_escapeGame),
    id_user INT REFERENCES user(id_user)
);

CREATE TABLE IF NOT EXISTS jobs (
    id_jobs INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    titleFR VARCHAR(255),
    position VARCHAR(255),
    positionFR VARCHAR(255),
    task TEXT,
    taskFR TEXT,
    strength TEXT,
    strengthFR TEXT,
    visible BOOLEAN
);

CREATE TABLE IF NOT EXISTS contactForm (
    id_contactForm INT PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    email VARCHAR(255),
    phone INT,
    message TEXT
);

CREATE TABLE IF NOT EXISTS reviews (
    id_reviews INT PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    description TEXT,
    descriptionFR TEXT,
    rating FLOAT,
    id_escapeGame INT REFERENCES escapeGame(id_escapeGame)
);

CREATE TABLE IF NOT EXISTS buying (
    id_user INT REFERENCES user(id_user),
    id_escapeGame INT REFERENCES escapeGame(id_escapeGame),
    id_buying INT PRIMARY KEY AUTO_INCREMENT,
    buyingDate DATE,
    gameDate DATE,
    nbPlayers TINYINT,
    buyersFirstName VARCHAR(32),
    buyersLastName VARCHAR(32),
    type INT
);

