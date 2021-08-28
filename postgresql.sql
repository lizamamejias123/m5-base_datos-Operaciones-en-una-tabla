-- tabla post --

CREATE TABLE post( id serial , nombre_user VARCHAR(100), fecha DATE NOT NULL, contenido VARCHAR(100) NOT NULL, descripcion VARCHAR(1000) NOT NULL, primary key(id));
INSERT INTO post(nombre_user,fecha, contenido, descripcion) VALUES ('pamela','2021-08-27','post1', 'MI PRIMER POST DE PAMELA');
INSERT INTO post(nombre_user,fecha, contenido, descripcion) VALUES ('pamela','2021-08-28','post2', 'MI SEGUNDO POST DE PAMELA');
INSERT INTO post(nombre_user,fecha, contenido, descripcion) VALUES ('carlos','2021-08-29','post3', 'MI TERCER POST DE CARLOS');
ALTER TABLE post ADD titulo varchar(100);
UPDATE post SET titulo ='MI PRIMER TITULO PAMELA' WHERE id = 1;
UPDATE post SET titulo ='MI SEGUNDO TITULO PAMELA' WHERE id = 2;
UPDATE post SET titulo ='MI PRIMER TITULO CARLOS' WHERE id = 3;
INSERT INTO post(nombre_user,fecha, contenido, descripcion, titulo) VALUES ('pedro','2021-08-30','post4', 'MI PRIMER POST DE PEDRO','MI PRIMER TITULO DE PEDRO');
INSERT INTO post(nombre_user,fecha, contenido, descripcion, titulo) VALUES ('pedro','2021-09-01','post5', 'MI SEGUNDO POST DE PEDRO','MI SEGUNDO TITULO DE PEDRO');
DELETE FROM post WHERE id = 3;
INSERT INTO post(nombre_user,fecha, contenido, descripcion, titulo) VALUES ('carlos','2021-09-02','newpost2', 'MI SEGUNDO new POST DE PEDRO','MI new SEGUNDO TITULO DE PEDRO');

-- tabla comentarios --

CREATE TABLE comentarios(id SERIAL, fecha DATE, hora TIME, contenido VARCHAR, id_post INT, PRIMARY KEY (id), FOREIGN KEY (id_post) REFERENCES post(id));
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-03', '14:00:00', 'PostComentario1', 1);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-04', '14:00:00', 'PostComentario2', 1);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-05', '14:00:00', 'PostComentario1', 6);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-06', '14:00:00', 'PostComentario2', 6);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-07', '14:00:00', 'PostComentario3', 6);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-08', '14:00:00', 'PostComentario4', 6);
INSERT INTO post (nombre_user, fecha, contenido, descripcion, titulo) VALUES ('Margarita', '2021-09-10', 'post1', 'MI PRIMER POST MARGARITA', 'MI PRIMER TITULO MARGARITA');
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-11', '14:00:00', 'PostComentario1', 7);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-12', '14:00:00', 'PostComentario2', 7);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-13', '14:00:00', 'PostComentario3', 7);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-14', '14:00:00', 'PostComentario4', 7);
INSERT INTO comentarios(fecha, hora, contenido, id_post) VALUES ('2021-09-15', '14:00:00', 'PostComentario5', 7);

--SELECT * FROM post;
--SELECT * FROM comentarios;