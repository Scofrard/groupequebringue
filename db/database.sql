CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_login VARCHAR(100) NOT NULL UNIQUE,
    user_pass VARCHAR(255) NOT NULL,
    user_email VARCHAR(100) NOT NULL UNIQUE,
    user_registered DATETIME DEFAULT CURRENT_TIMESTAMP,
    token VARCHAR(255),
    token_expire DATETIME,
    is_confirmed BOOLEAN DEFAULT FALSE
);


CREATE TABLE events (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_date DATETIME NOT NULL,
    event_location VARCHAR(255) NOT NULL
);


CREATE TABLE reservations (
    reservation_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT NOT NULL,
    user_id INT NOT NULL,
    reserved_seats INT NOT NULL,
    FOREIGN KEY (event_id) REFERENCES events(event_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

