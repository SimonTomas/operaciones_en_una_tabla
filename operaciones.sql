-- PARTE 1

-- Crear Base de Datos
CREATE DATABASE posts;
\c posts;

-- Crear Tabla Post
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    nombre_de_usuario VARCHAR(70),
    fecha_de_creacion DATE,
    contenido VARCHAR(100),
    descripcion VARCHAR(70)
    );

-- Insertando 3 Posts
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(
'Pamela',
'2020-09-01',
'holanda que talca',
'como andamios');

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(
'Pamela',
'2020-09-02',
'este es mi segundo post',
'y estoy muy feliz');

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES(
'Carlos',
'2020-08-02',
'Soy Carlitos',
'y me dicen Charles');

-- Agregar Columna Título
ALTER TABLE post ADD COLUMN titulo VARCHAR(50);

-- Agregar Titulos a las Publicaciones Ingresadas
UPDATE post
SET titulo = 'Mi primer post'
WHERE id=1;

UPDATE post
SET titulo = 'Mi segundo post'
WHERE id=2;

UPDATE post
SET titulo = 'El Charles'
WHERE id=3;

-- Insertar 2 Posts al Usuario Pedro

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(
'Pedro',
'2020-08-25',
'Soy Pedro',
'Me dicen Peter',
'El Peter'
);

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(
'Pedro',
'2020-08-20',
'Holaaa',
'Vendo paltas',
'Paltas'
);

-- Eliminar el post de Carlos

DELETE FROM post WHERE nombre_de_usuario = 'Carlos';

-- Nuevo Post para el Usuario Carlos

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(
'Carlos',
'2020-07-15',
'Hola',
'Mi post anterior lo borraron',
'Nuevo post'
);

-- PARTE 2

-- Nueva tabla llamada Comentarios

CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha_y_hora_de_creacion TIMESTAMP, contenido VARCHAR(70), post_id INT NOT NULL, FOREIGN KEY(post_id) REFERENCES post(id));

-- Crear 2 Comentarios para Pamela y 4 para Carlos

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-20 10:35:20',
'Este es un comentario',
1);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-20 11:40:20',
'Este es otro comentario',
1);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-22 12:30:25',
'Hola',
6);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-22 14:35:25',
'Hola2',
6);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-23 17:51:25',
'Hola3',
6);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-12 20:02:25',
'Hola4',
6);

-- Nuevo post de Margarita

INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo) VALUES(
'Margarita',
'2020-10-15',
'Post de Margarita',
'Jelou',
'wenaAA');

-- Ingresar 5 comentarios al post de Margarita

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-26 17:40:15',
'Holaaaa1',
7);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-26 10:22:15',
'Holaaaa2',
7);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-26 11:46:50',
'Holaaaa3',
7);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-26 19:56:20',
'Holaaaa4',
7);

INSERT INTO comentarios (fecha_y_hora_de_creacion, contenido, post_id) VALUES(
'2020-05-26 23:10:32',
'Holaaaa5',
7);