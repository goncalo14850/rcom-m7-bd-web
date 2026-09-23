CREATE DATABASE IF NOT EXISTS bd_produtos
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_unicode_ci;

USE bd_produtos;

-- Tabela de administradores (quem pode entrar no painel)
CREATE TABLE IF NOT EXISTS administradores (
    id            INT AUTO_INCREMENT PRIMARY KEY,
    utilizador    VARCHAR(50)  NOT NULL UNIQUE,
    password      VARCHAR(255) NOT NULL,
    nome          VARCHAR(100) NOT NULL,
    data_criacao  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Conta de administrador inicial: utilizador "admin", password "123"
-- (a password nunca fica visível: é guardada com um hash bcrypt)
INSERT INTO administradores (utilizador, password, nome)
VALUES (
    'admin',
    '$2y$12$Z55U/2KoLdNKmHfcD6lu1.Rc3t26pJDwWasx8tyBgrsTaYteXnB1G',
    'Administrador'
);
