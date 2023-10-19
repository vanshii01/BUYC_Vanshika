-- Creating Users table
CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Creating Cars table
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    image_path TEXT,
    price DECIMAL(10, 2),
    color VARCHAR(255),
    mileage DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Inserting dummy data into Users table
INSERT INTO Users (username, password) VALUES 
('dealer1', 'hashedpassword1'),
('dealer2', 'hashedpassword2');

-- Inserting dummy data into Cars table
INSERT INTO Cars (user_id, title, description, image_path, price, color, mileage) VALUES 
 { model: 'Honda Civic', year: 2017, price: 22000, colors: ['White', 'Silver'], mileage: 32, power: 140, maxSpeed: 190 },
    { model: 'Ford Mustang', year: 2018, price: 35000, colors: ['Red', 'Blue'], mileage: 25, power: 450, maxSpeed: 155 },
    { model: 'Chevrolet Camaro', year: 2019, price: 32000, colors: ['Black', 'Yellow'], mileage: 27, power: 455, maxSpeed: 165 },
    { model: 'Nissan Altima', year: 2020, price: 28000, colors: ['Gray', 'Blue'], mileage: 30, power: 188, maxSpeed: 140 },
    { model: 'Audi A4', year: 2021, price: 42000, colors: ['Silver', 'Black'], mileage: 26, power: 248, maxSpeed: 155 },
    { model: 'BMW 3 Series', year: 2022, price: 45000, colors: ['White', 'Blue'], mileage: 29, power: 255, maxSpeed: 160 },
    { model: 'Mercedes-Benz C-Class', year: 2023, price: 48000, colors: ['Black', 'Gray'], mileage: 28, power: 255, maxSpeed: 155 },
    { model: 'Lexus ES', year: 2024, price: 38000, colors: ['Silver', 'Blue'], mileage: 31, power: 215, maxSpeed: 140 },
    { model: 'Hyundai Sonata', year: 2025, price: 30000, colors: ['White', 'Red'], mileage: 33, power: 185, maxSpeed: 140 },
    { model: 'Kia Optima', year: 2026, price: 29000, colors: ['Silver', 'Black'], mileage: 32, power: 178, maxSpeed: 135 }
        
