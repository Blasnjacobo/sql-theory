CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
	FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(language_id),
    UNIQUE(user_id)
)

--INSERT
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('PHP');
INSERT INTO languages (name) VALUES ('C++');
INSERT INTO languages (name) VALUES ('C')

