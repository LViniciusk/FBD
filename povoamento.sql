-- Truncate :D
TRUNCATE TABLE Usuario RESTART IDENTITY CASCADE;
TRUNCATE TABLE Aluno RESTART IDENTITY CASCADE;
TRUNCATE TABLE Professor RESTART IDENTITY CASCADE;
TRUNCATE TABLE Disciplina RESTART IDENTITY CASCADE;
TRUNCATE TABLE Professor_Disciplina RESTART IDENTITY CASCADE;
TRUNCATE TABLE Funcionario RESTART IDENTITY CASCADE;
TRUNCATE TABLE Sala  RESTART IDENTITY CASCADE;
TRUNCATE TABLE Reserva  RESTART IDENTITY CASCADE;
TRUNCATE TABLE Recurso  RESTART IDENTITY CASCADE;
TRUNCATE TABLE Sala_Recurso  RESTART IDENTITY CASCADE;


-- POVOAMENTO :D
INSERT INTO Usuario (nome, email, senha) VALUES 
('João Silva', 'joao.silva@ufc.br', 'senha123'),
('Maria Oliveira', 'maria.oliveira@ufc.br', 'senha456'),
('Carlos Pereira', 'carlos.pereira@ufc.br', 'senha789'),
('Ana Costa', 'ana.costa@ufc.br', 'senha012'),
('Atilio Gomes', 'Atilio.Gomes@ufc.br', 'senha345'),
('Beatriz Souza', 'beatriz.souza@ufc.br', 'senha678'),
('Lucas Fernandes', 'lucas.fernandes@ufc.br', 'senha901'),
('Camila Rocha', 'camila.rocha@ufc.br', 'senha234'),
('Ricardo Santos', 'ricardo.santos@ufc.br', 'senha567'),
('Fernanda Almeida', 'fernanda.almeida@ufc.br', 'senha890');

INSERT INTO Aluno (id, matricula) VALUES 
(1, 1001),
(2, 1002),
(3, 1003),
(4, 1004);

INSERT INTO Professor (id) VALUES 
(5),
(6),
(7);

INSERT INTO Disciplina (nome) VALUES 
('ED'),
('FBD'),
('FUP'),
('EDA'),
('Calculo'),
('WEB'),
('PAA'),
('POO'),
('Logica'),
('Discreta');

INSERT INTO Professor_Disciplina (id_professor, id_disciplina) VALUES 
(5, 1),
(6, 2),
(7, 3),
(5, 4),
(6, 5),
(7, 6),
(5, 7),
(6, 8),
(7, 9),
(5, 10);

INSERT INTO Funcionario (id, funcao) VALUES 
(8, 'Psicólogo'),
(9, 'Contador'),
(10, 'Auxiliar de Limpeza');

INSERT INTO Sala (nome, capacidade) VALUES 
('Sala - 101', 30),
('Sala - 102', 25),
('Sala - 103', 35),
('Sala - 104', 20),
('Sala - 105', 20),
('Sala - 106', 20),
('Sala - 107', 15),
('Sala - 108', 100),
('Sala - 109', 20),
('Sala - 110', 15);


INSERT INTO Reserva (finalidade,id_sala, n_participantes, dia, h_inicio, h_fim, reservada_por) VALUES 
('Estudos de ED', 1, 25, '2024-08-20', '08:00', '10:00', 1),
('Estudos de EDA', 2, 30, '2024-08-21', '10:00', '12:00', 2),
('Célula PACCE', 3, 50, '2024-08-22', '14:00', '16:00', 3),
('Palestra', 4, 100, '2024-08-23', '09:00', '11:00', 4),
('Célula PACCE', 5, 20, '2024-08-24', '13:00', '15:00', 5),
('Clube do livro', 6, 15, '2024-08-25', '15:00', '17:00', 6),
('Poker', 7, 20, '2024-08-26', '08:00', '10:00', 7),
('Célula PACCE', 8, 15, '2024-08-27', '10:00', '12:00', 8),
('Estudos de WEB', 9, 30, '2024-08-28', '13:00', '15:00', 9),
('Célula PACCE', 10, 25, '2024-08-29', '14:00', '16:00', 10);

INSERT INTO Recurso (nome) VALUES 
('Projetor'),
('Computadores'),
('Lousa'),
('Quadro Interativo'),
('TV'),
('Livros'),
('Quadro Branco');

INSERT INTO Sala_Recurso (id_sala, id_recurso) VALUES
(1, 1), (1, 2),  
(2, 2), (2, 3),  
(3, 4),          
(4, 5),          
(5, 1),          
(6, 1),          
(7, 6),          
(8, 2),          
(9, 1),          
(10, 7);         