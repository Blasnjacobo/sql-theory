CREATE INDEX idx_name ON USERS(name);

CREATE UNIQUE INDEX idx_name ON USERS(name);

CREATE UNIQUE INDEX idx_name ON USERS(name, surname);

SELECT * FROM users WHERE name='brais';

DROP INDEX idx_name ON users;