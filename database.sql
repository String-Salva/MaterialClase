CREATE DATABASE notas;
USE notas;

CREATE TABLE alumnos (
dni VARCHAR(9) PRIMARY KEY,
nombre VARCHAR(15) NOT NULL,
apellido VARCHAR(15) NOT NULL,
fecha_nacimiento DATE,
genero ENUM('masculino','femenino','otros')
);

CREATE TABLE asignaturas (
id DECIMAL(1,0) PRIMARY KEY,
nombre VARCHAR(15),
grado VARCHAR(6),
curso ENUM('1','2') NOT NULL
);


CREATE TABLE notas (
cod INT AUTO_INCREMENT PRIMARY KEY,
nota DECIMAL(3,2),
profesor VARCHAR(20)
);
 
 
 ALTER TABLE NOTAS ADD COLUMN ID_ALUMNO VARCHAR(9);
 ALTER TABLE NOTAS ADD CONSTRAINT FK_ID_ALUMNO FOREIGN KEY (ID_ALUMNO) REFERENCES ALUMNOS(DNI);
 
 
 ALTER TABLE NOTAS ADD COLUMN ID_ASIGNATURAS DECIMAL(1,0);
 ALTER TABLE NOTAS ADD CONSTRAINT FK_ID_ASIGNATURAS FOREIGN KEY (ID_ASIGNATURAS) REFERENCES ASIGNATURAS(cod);
 
 INSERT INTO ALUMNOS (dni, nombre, apellido, fecha_nacimiento,genero) VALUES
 ('25375z','salva','rodriguez','1992-03-09','masculino'),
 ('2573771z','lionel','rodriguez','1992-03-09','masculino'),
 ('273775z','neymar','rodriguez','1992-03-09','masculino'),
 ('25377a5z','kylian','rodriguez','1992-03-09','masculino');
 
 insert into asignaturas (id, nombre, grado, curso) values
 (1,'daw','1','2'),
 (4,'daw','1','2'),
(2,'daw','1','2'),
(3,'daw','1','2');


insert into NOTAS (nota,profesor,id_alumno,id_asignaturas) values




