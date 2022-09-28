CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL,
  "password" varchar NOT NULL,
  "age" int NOT NULL,
  "rol_id" uuid NOT NULL
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "levels_id" uuid NOT NULL,
  "users_id" uuid NOT NULL,
  "categories_id" uuid NOT NULL,
  "teachers_id" uuid NOT NULL
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar NOT NULL,
  "url" varchar NOT NULL,
  "courses_id" uuid NOT NULL
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

CREATE TABLE "teachers" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL,
  "email" varchar UNIQUE NOT NULL
);

CREATE TABLE "levels" (
  "id" uuid PRIMARY KEY,
  "name" varchar NOT NULL
);

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("rol_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("teachers_id") REFERENCES "teachers" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("levels_id") REFERENCES "levels" ("id");

insert into roles (id, name) values ('2a697eed-5bd5-43de-b5cc-8537e55f2cc9', 'Student');

insert into roles (id, name) values ('c9b79665-481f-42a0-816e-1c4c824437b8', 'Teacher');

insert into roles (id, name) values ('018bd806-55e9-4777-9f61-7232553537f7', 'Admin');

insert into users(id, name, email, password, age, rol_id) values ('f231786f-9651-4f1c-a2a8-71f1a3f4f7b5', 'Andres Apolo', 'andres10@hotmail.com', 'root1', 32, '2a697eed-5bd5-43de-b5cc-8537e55f2cc9');

insert into users(id, name, email, password, age, rol_id) values ('063127f2-26b8-458b-af4f-6dcc8763ecfd', 'Lionel Messi', 'messi10@hotmail.com', 'root10', 35, '2a697eed-5bd5-43de-b5cc-8537e55f2cc9');

insert into categories(id, name) values ('3f783f3e-5b76-4296-8455-764180ad25b0', 'programacion');

insert into categories(id, name) values ('a2a1d529-72de-4ee7-ab7d-f6ebcfb3eaf5', 'deporte');

insert into levels(id, name) values ('3ec15b39-3f61-40b5-9866-6ee830c45ae8', 'Principiante');

insert into levels(id, name) values ('5c7e5ad4-0533-4ce5-91fb-78c31f43a763', 'Medio');

insert into levels(id, name) values ('1ad68ec7-079a-4652-9a36-e4b7044cf4a5', 'Avanzado');

insert into teachers(id, name, email) values ('cdc942af-8065-4117-b73d-763295d4564f', 'Xavier Rojas', 'xavierr@hotmail.com');

insert into teachers(id, name, email) values ('f754e850-a2f0-4a6e-b4b3-f555b2807ed8', 'Diego Maradona', 'diegol10@hotmail.com');

insert into courses(id, title, description, levels_id, users_id, categories_id, teachers_id) values ('63c85885-3b21-41d9-97c2-645d1dff4207', 'JavaScript', 'Aprender arreglos y objetos', '3ec15b39-3f61-40b5-9866-6ee830c45ae8', 'f231786f-9651-4f1c-a2a8-71f1a3f4f7b5', '3f783f3e-5b76-4296-8455-764180ad25b0', 'cdc942af-8065-4117-b73d-763295d4564f' );

insert into courses(id, title, description, levels_id, users_id, categories_id, teachers_id) values ('18914c42-3225-45e8-bd5a-ee4723c18fb2', 'Futbol', 'Aprender a cobrar tiros libres', '1ad68ec7-079a-4652-9a36-e4b7044cf4a5', '063127f2-26b8-458b-af4f-6dcc8763ecfd', 'a2a1d529-72de-4ee7-ab7d-f6ebcfb3eaf5', 'f754e850-a2f0-4a6e-b4b3-f555b2807ed8');

insert into course_videos(id, title, url, courses_id) values ('07e5cb5b-bee2-4055-9596-9251b845ee9a', 'Programando con JavaScript', 'https://www.youtube.com/watch?v=RqQ1d1qEWlE', '63c85885-3b21-41d9-97c2-645d1dff4207');

insert into course_videos(id, title, url, courses_id) values ('75ae03c7-3025-442c-9ec1-7e0c2c962a1d', 'Tiros Libres', 'https://www.youtube.com/watch?v=PDGY-YN21dg', '18914c42-3225-45e8-bd5a-ee4723c18fb2' );
