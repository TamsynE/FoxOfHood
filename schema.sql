DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(100) NOT NULL,
  totalCash MONEY
);

CREATE TABLE portfolio (
    ticker VARCHAR(10) UNIQUE NOT NULL,
    id INTEGER,
    FOREIGN KEY (id) REFERENCES user(id)
);

CREATE TABLE eventLog(
    id INTEGER,
    event ENUM('Bought', 'Sold', 'Logged on', 'Logged out') NOT NULL,
    

)