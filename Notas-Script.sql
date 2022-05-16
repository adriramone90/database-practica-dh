create database publicaciones;

use publicaciones;

/*Creando tablas*/

create table users (
	id int auto_increment not null primary key,
	name varchar(50) not null,
	email varchar(50) not null unique,
	avatar varchar(100)
);

create table articles (
	id int auto_increment not null primary key,
	title varchar(100) not null,
	created date not null,
	updated date,
	description text not null,
	deleted tinyint default 0 not null,
	id_usuario int not null,
	foreign key (id_usuario) references users(id)
);

create table categories (
	id int auto_increment not null primary key,
	name varchar(100) not null
);

create table note_category (
	id int not null primary key auto_increment,
	id_note int not null,
	id_category int not null,
	foreign key (id_note) references articles(id),
	foreign key (id_category) references categories(id)
);

/*Insertando datos a users*/

insert into users(name, email, avatar) values ("Soham Garcia", "soham.garcia@example.com", "https://randomuser.me/api/portraits/thumb/men/75.jpg"),
("June Hernandez", "june.hernandez@example.com", "https://randomuser.me/api/portraits/thumb/woman/75.jpg"),
("Milton Henry", "milton.henry@example.com", "https://randomuser.me/api/portraits/thumb/men/50.jpg"),
("Logan Davis", "logan.davis@example.com", "https://randomuser.me/api/portraits/thumb/men/40.jpg"),
("William James", "william.james@example.com", "https://randomuser.me/api/portraits/thumb/men/38.jpg"),
("Kim Armstrong", "kim.armstrong@example.com", "https://randomuser.me/api/portraits/thumb/woman/12.jpg"),
("Isaiah Lynch", "isaiah.lynch@example.com", "https://randomuser.me/api/portraits/thumb/men/78.jpg"),
("Ramona Knight", "ramona.knight@example.com", "https://randomuser.me/api/portraits/thumb/men/71.jpg"),
("Lucy Murphy", "lucy.murphy@example.com", "https://randomuser.me/api/portraits/thumb/men/1.jpg"),
("Ann King", "ann.king@example.com", "https://randomuser.me/api/portraits/thumb/men/1.jpg");

/*Insertando datos a articles*/

insert into articles (title, created, updated, description, deleted, id_usuario) values 
("Lorem Ipsum Generator", "1990-10-5", "1992-2-10", "Este generador permite usuario generar el texto por número de palabras, párrafos, listas o bytes, y es capaz de poder  añadir etiquetas HTML para el contenido. Tambuén nos da una breve reseña histórica del origen del Lorem ipsum y la traducción del texto original.",default, 2), 
("Lipsum.com", "1993-12-2", default, "Es uno de los generadores más populares y que proporciona contenido sencillo con pocas opciones. El usuario puede especificar el número de párrafos, palabras, bytes o listas. En la actualidad hay una serie de simulacros de las banderas disponibles para su descarga. El simulacro de pancartas son en tres colores diferentes y en una gama de diferentes tamaños de banner estándar.", 1, 3),
("adhesiontext", "2001-1-1", default, " Es otra interesante herramienta de texto dinámico que puede generar un párrafo de texto ficticio con diferentes conjuntos de caracteres. El usuario puede especificar diferentes idiomas y alfabetos, como el latín, cirílico, griego y árabe. Diferentes opciones se pueden utilizar, como base para añadir puntuación, mayúsculas y minúsculas y otras cosas", default, 8),
("HTML-Ipsum.", "2022-1-5", default, "Es un generador de Design OBlog. Tiene un montón de diferentes productos, tales como el párrafo largo, medio punto, una frase, lista desordenada: breves artículos, lista desordenada: artículos largos, lista ordenada, breves artículos, etc.",default, 7),
("Text Generator by malevole", "1997-10-5", "1998-2-10", "Si te cansas con el texto Lorem ipsum y estás aburrido de él, entonces deberías tratar con este otro generador. Genera contenido azar, con algunos párrafos al azar que será más significativo que los aburridos contenidos de Lorem ipsum. El usuario puede especificar el número de párrafos y otras cosas.", 1, 5),
("Blind Text Generator", "2018-5-1", "2020-2-10", "Es un generador de texto ciego que permite al usuario seleccionar diferentes tipos de texto ficticio y distinto número de palabras, caracteres y párrafos que desees insertar. Tiene opciones avanzadas, tales como tipo de letra, estilo de letra y el espaciamiento. El usuario tiene una vista previa de la tipografía con el estilo CSS inmediatamente cuando se realizan los cambios.", 1, 9),
("Dummy Text Generator", "2015-7-5", default, "Esta herramienta permite al usuario elegir entre el típico «Lorem ipsum» o contenido con palabras en inglés. El usuario puede especificar el número de palabras y también los párrafos. Además de estos, las opciones tales como etiquetas HTML, partidas aleatorias, sub-títulos, al azar en negrita y cursiva también.", 1, 1),
("Random Text Generator", "2000-5-5", "2002-2-10", "Este es el generador de texto más sencillo que nunca encontraste. Basta con seleccionar el idioma y pulsa a ir. El contenido aparece en el texto y se puede copiar y utilizar en donde quieras. Este generador admite 10 idiomas diferentes. Cada vez que se pulsa el botón, el sistema te dará un contenido diferente, basado en su idioma seleccionado.", default, 10),
("Lorem Generator", "1995-12-4", "1998-5-10", "Microsoft Word cuenta con una característica que nos permite generar un texto aleatorio sin significado, para ello recurrimos a uno de los trucos más desconocidos de Word, las funciones ocultas. Word cuenta con dos modos para generar texto random, el primero consiste en generar un texto aleatorio en el idioma por defecto del sistema operativo, esto quiere decir que si tenemos configurado Windows en español, el sistema devolverá un texto aleatorio en dicho idioma.", default, 7),
("Lorem", "1980-10-1", "1992-2-1", "Esta función al más puro estilo Excel utiliza dos parámetros entre paréntesis. El primero, el 5, indica la cantidad de párrafos que deseamos y el 4 la cantidad de líneas que deseamos en cada párrafo. La segunda función para generar estos textos de relleno, es la función =lorem(x,x) que funciona de manera similar a la anterior, con la diferencia de que en está ocasión el texto generado es en latín, el famoso «lorem ipsum».",default, 9),
("Lorem Ipsum text", "2020-3-1", default, "Este generará texto que inicia con el «Lorem Ipsum», muy popular entre los diseñadores de plantillas y en las mismas proporciones que el caso anterior. El primer número indica la cantidad de párrafos y el segundo la cantidad de lineas en cada uno. Una función para que puede resultar muy útil para poner ejemplos en clase y que podríamos haber incluido en nuestra lista de herramientas online para docentes.", 1, 5),
("Lorem Ipsum", "1990-1-5", default, "datecumple la definición del estándar ANSI SQL para el calendario Gregoriano: NOTA 85: Los tipos de datos datetime permitirán que las fechas en el formato Gregoriano se almacenen en el intervalo de fechas de 01-01-0001 CE a 12-31-9999 CE", 1, 1);

/*Insertando datos a categories*/

insert into categories (name) values
("Música"),
("Arte"),
("Literatura"),
("Tecnología");

/*Relacionando tablas con tabla pivot*/

insert into note_category (id_note, id_category) values 
(12, 1),
(11, 1),
(10, 2),
(9, 2),
(8, 2),
(7, 3),
(6, 4),
(5, 4),
(4, 1),
(3, 2),
(2, 3),
(1, 4);