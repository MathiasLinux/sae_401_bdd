CREATE TABLE IF NOT EXISTS escapeGame (
    id INT PRIMARY KEY,
    name VARCHAR(64),
    nameFR VARCHAR(64),
    puzzles INT,
    adventures INT,
    spots INT,
    story INT,
    description TEXT,
    descriptionFR TEXT,
    address VARCHAR(255),
    visible BOOLEAN
);

CREATE TABLE IF NOT EXISTS escapeGamePrice (
    id INT PRIMARY KEY,
    escapeGameId INT,
    2_3Persons FLOAT,
    4Persons FLOAT,
    5Persons FLOAT,
    6Persons FLOAT,
    7Persons FLOAT,
    8Persons FLOAT,
    9Persons FLOAT,
    10Persons FLOAT,
    11Persons FLOAT,
    12Persons FLOAT,
    12PlusPersons FLOAT,
    id_escapeGame INT REFERENCES escapeGame(id)
);

CREATE TABLE IF NOT EXISTS contactForm (
    id INT PRIMARY KEY,
    date DATE,
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    email VARCHAR(255),
    phone INT,
    message TEXT
);

CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255),
    rights SET('superadmin', 'editor', 'management', 'jobs', 'admin')
);

CREATE TABLE IF NOT EXISTS reviews (
    id INT PRIMARY KEY,
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    description TEXT,
    descriptionFR TEXT,
    rating FLOAT
);

CREATE TABLE IF NOT EXISTS escapeGameSale (
    id INT PRIMARY KEY,
    userId INT,
    reservationId INT,
    id_user INT REFERENCES user(id)
);


CREATE TABLE IF NOT EXISTS reservation (
    id INT PRIMARY KEY,
    date DATE,
    hours TINYINT,
    escapeGameId INT,
    nbPersons TINYINT,
    firstName VARCHAR(32),
    lastName VARCHAR(32),
    id_escapeGameSale INT REFERENCES escapeGameSale(id),
    id_escapeGame INT REFERENCES escapeGame(id)
);

CREATE TABLE IF NOT EXISTS giftCard (
    id INT PRIMARY KEY,
    type ENUM('money','escape'),
    price FLOAT,
    escapeGameId INT,
    nbPersons TINYINT
);

CREATE TABLE IF NOT EXISTS giftCardSale (
    id INT PRIMARY KEY,
    userId INT,
    giftCardId INT,
    id_giftCard INT REFERENCES giftCard(id),
    id_user INT REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS qAndACat (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    titleFR VARCHAR(255),
    escapeGamesId INT,
    id_escapeGame INT REFERENCES escapeGame(id)
);

CREATE TABLE IF NOT EXISTS qAndAQuestion (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    titleFR VARCHAR(255),
    answer TEXT,
    answerFR TEXT,
    qAndACatId INT,
    id_qAndACat INT REFERENCES qAndACat(id)
);

CREATE TABLE IF NOT EXISTS jobs (
    id INT PRIMARY KEY,
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