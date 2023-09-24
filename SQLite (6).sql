-- Создаем таблицу Salespeople для хранения информации о продавцах
CREATE TABLE Salespeople (
  id INT PRIMARY KEY, -- Уникальный идентификатор продавца
  sname VARCHAR(255), -- Фамилия и имя продавца
  city VARCHAR(255), -- Город, в котором работает продавец
  comm INT -- Комиссия продавца в процентах
);

-- Создаем таблицу Customers для хранения информации о клиентах
CREATE TABLE Customers (
  id INT PRIMARY KEY, -- Уникальный идентификатор клиента
  cname VARCHAR(255), -- Фамилия и имя клиента
  city VARCHAR(255), -- Город, в котором находится клиент
  rating INT, -- Рейтинг клиента
  id_sp INT, -- Идентификатор продавца, который обслуживает клиента
  FOREIGN KEY (id_sp) REFERENCES Salespeople(id) -- Ограничение внешнего ключа, связывающее таблицы Salespeople и Customers
);

-- Заполняем таблицу Salespeople данными
INSERT INTO Salespeople (id, sname, city, comm)
VALUES
  (1, 'Деснов', 'Москва', 90),
  (2, 'Краснов', 'Москва', 95),
  (3, 'Кириллов', 'Тверь', 96),
  (4, 'Ермолаев', 'Обнинск', 98),
  (5, 'Колесников', 'Серпухов', 98),
  (6, 'Пушкин', 'Челябинск', 90),
  (7, 'Лермонтов', 'Одинцово', 85),
  (8, 'Белый', 'Москва', 89),
  (9, 'Чудинов', 'Москва', 96),
  (10, 'Лосев', 'Одинцово', 93);

-- Заполняем таблицу Customers данными
INSERT INTO Customers (id, cname, city, rating, id_sp)
VALUES
  (1, 'Колованов', 'Москва', 10, 2),
  (2, 'Петров', 'Тверь', 25, 3),
  (3, 'Плотников', 'Москва', 22, 1),
  (4, 'Кучеров', 'Санкт-Петербург', 28, 5),
  (5, 'Малкин', 'Санкт-Петербург', 18, 5),
  (6, 'Шипачев', 'Челябинск', 30, 6),
  (7, 'Мозякин', 'Одинцово', 25, 10),
  (8, 'Проворов', 'Москва', 25, 2);