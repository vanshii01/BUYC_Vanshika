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
(1, 'Honda Civic 2020', 'Bullet 1\nBullet 2\nBullet 3\nBullet 4\nBullet 5', 'path_to_image1.jpg', 20000, 'Red', 15000),
(1, 'Toyota Corolla 2019', 'Bullet 1\nBullet 2\nBullet 3\nBullet 4\nBullet 5', 'path_to_image2.jpg', 18000, 'Blue', 12000);