drop database if exists flipquiz;

create database if not exists flipquiz;

use flipquiz;

create table if not exists quiz
(
	quiz_id int auto_increment,
    quiz_description varchar(50) not null,
	PRIMARY KEY (quiz_id)
);
create table if not exists categorie 
(
	categorie_id int auto_increment,
    categorie_nom varchar(50) not null,
    quiz_id int,
    PRIMARY KEY (categorie_id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id)
);
create table if not exists question 
(
	question_id int auto_increment primary key,
    question_titre varchar(50) not null,
    question_reponse varchar(50) not null,
    question_niveau tinyint not null
);
CREATE TABLE IF NOT EXISTS categorie_question
(
	categorie_id INT,
    question_id INT,
    PRIMARY KEY (categorie_id, question_id),
    FOREIGN KEY (categorie_id) REFERENCES categorie (categorie_id),
    FOREIGN KEY (question_id) REFERENCES question (question_id)
);