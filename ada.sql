
-- Users tablosu
CREATE TABLE IF NOT EXISTS Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Role INT NOT NULL,
    Ip VARCHAR(255),
    Browser VARCHAR(255),
    OS VARCHAR(255),
    LastLogin DATETIME,
    RoleExpiration DATETIME,
    FOREIGN KEY (Role) REFERENCES Roles(id)
);

-- Roles tablosu
CREATE TABLE IF NOT EXISTS Roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    RoleName VARCHAR(255) NOT NULL
);

INSERT INTO Roles (id, RoleName) VALUES
(1, 'Free'),
(2, 'VIP'),
(3, 'Admin');

-- Announcements tablosu
CREATE TABLE IF NOT EXISTS Announcements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Header VARCHAR(255) NOT NULL,
    Content TEXT NOT NULL,
    Date DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tickets tablosu
CREATE TABLE IF NOT EXISTS Tickets (
    id INT AUTO_INCREMENT PRIMARY KEY,
    UserId INT NOT NULL,
    UserName VARCHAR(255) NOT NULL,
    Subject MEDIUMTEXT,
    Message MEDIUMTEXT,
    LastSend TIMESTAMP NULL DEFAULT NULL,
    Response MEDIUMTEXT,
    FOREIGN KEY (UserId) REFERENCES Users(id)
);