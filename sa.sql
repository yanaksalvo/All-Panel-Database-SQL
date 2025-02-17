
CREATE DATABASE IF NOT EXISTS sa;
USE sa;

CREATE TABLE IF NOT EXISTS users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    ip_address VARCHAR(45),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    role VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS sunucu (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    sunucu_adi VARCHAR(255) NOT NULL,
    sunucu_url TEXT NOT NULL,
    tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS duyurular (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    baslik VARCHAR(255) NOT NULL,
    icerik TEXT NOT NULL,
    tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS apiler (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    Adı VARCHAR(255) NOT NULL,
    api TEXT NOT NULL,
    api_url TEXT NOT NULL,
    parametre TEXT NOT NULL,
    tarih TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, role, ip_address, created_at) VALUES
('sowixpro', 'sowixpro', 'role2', '1', CURRENT_TIMESTAMP);

INSERT INTO duyurular (baslik, icerik) VALUES
('Duyuru 1', 'Bu birinci duyurudur.'),
('Duyuru 2', 'Bu ikinci duyurudur.');

INSERT INTO apiler (Adı, api, api_url, parametre) VALUES
('TC', 'http://20.80.242.1/sowixapi/tc.php?tc=11111111110', 'https://sowixxpro.xyz', 'tc'),
('Adres', 'http://20.80.242.1/sowixapi/adres.php?tc=11111111110', 'https://sowixxpro.xyz', 'tc');

INSERT INTO sunucu (sunucu_adi, sunucu_url) VALUES
('SOWİX PRO', 'https://sowixxpro.xyz');
