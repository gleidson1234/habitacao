CREATE DATABASE habitacao;
USE habitacao;


CREATE TABLE Proprietarios (
    codProprietario INT AUTO_INCREMENT PRIMARY KEY,
    nomeP VARCHAR(50),
    idadeP VARCHAR(20),
    CPFProprietario VARCHAR(20),
    telefone VARCHAR(20)
);


CREATE TABLE Imoveis (
    codImovel INT AUTO_INCREMENT PRIMARY KEY,
    nomeImovel VARCHAR(50),
    endereco VARCHAR(100),
    areaUtil VARCHAR(20),
    FK_Proprietario INT,
    FOREIGN KEY (FK_Proprietario) REFERENCES Proprietarios(codProprietario)
);


INSERT INTO Proprietarios (nomeP, idadeP, CPFProprietario, telefone) VALUES
('Gláuber', '30', '612347898-42', '81 996832345'),
('Andreia', '18', '341491912-68', '82 994573241'),
('Lucas', '23', '131002357-43', '83 998532129'),
('Pedro', '31', '473446902-42', '83 996123987'),
('Amanda', '42', '905342024-11', '85 987034213'),
('Natália', '25', '701302999-71', '82 995823541'),
('Laura', '37', '588335722-32', '82 988513467'),
('Felipe', '32', '349336520-00', '83 982365210'),
('Paula', '44', '674450047-61', '82 987232805'),
('João', '60', '201343268-92', '82 980036066');


INSERT INTO Imoveis (nomeImovel, endereco, areaUtil, FK_Proprietario) VALUES
('Casa Verde', 'Rua das Palmeiras, 123', '80m²', 1),
('Apartamento Azul', 'Av. Central, 456', '60m²', 2),
('Sítio Alegria', 'Zona Rural, km 10', '200m²', 3),
('Cobertura Luxo', 'Rua da Praia, 789', '150m²', 4),
('Loft Compacto', 'Av. Brasil, 101', '45m²', 5),
('Chácara Boa Vida', 'Linha 45, zona leste', '300m²', 6),
('Kitnet Estudante', 'Rua da Faculdade, 22', '35m²', 7),
('Duplex Moderno', 'Rua Nova, 55', '95m²', 8),
('Casa dos Sonhos', 'Av. Bela Vista, 88', '120m²', 9),
('Studio Criativo', 'Rua da Arte, 18', '50m²', 10);


SELECT * FROM Imoveis WHERE nomeImovel LIKE '%Casa%';


SELECT * FROM Proprietarios WHERE nomeP LIKE 'A%';


SELECT * FROM Imoveis WHERE areaUtil LIKE '%m²%';


SELECT I.nomeImovel, I.endereco, P.nomeP, P.telefone
FROM Imoveis I
INNER JOIN Proprietarios P ON I.FK_Proprietario = P.codProprietario;


SELECT P.nomeP, I.nomeImovel
FROM Proprietarios P
INNER JOIN Imoveis I ON P.codProprietario = I.FK_Proprietario
WHERE I.nomeImovel LIKE '%Apartamento%';
