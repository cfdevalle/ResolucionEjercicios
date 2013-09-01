delete from usuario_rol;
delete from usuario;
delete from rol;

insert into usuario(usuario, password, apellido, nombre) values ('jlopez', 'lopezj', 'lopez', 'jose');
insert into usuario(usuario, password, apellido, nombre) values ('jsanchez', 'sanchezj', 'sanchez', 'juan');
insert into usuario(usuario, password, apellido, nombre) values ('jperez', 'perezj', 'perez', 'jorge');

insert into rol(idRol, descripcionRol) values (1, 'ADM_USUARIO');
insert into rol(idRol, descripcionRol) values (2, 'ADM_MENUES');
insert into rol(idRol, descripcionRol) values (3, 'ADM_ROLES');

insert into usuario_rol(usuario_usuario, rol_idrol) values ('jlopez', 1);
insert into usuario_rol(usuario_usuario, rol_idrol) values ('jlopez', 2);
insert into usuario_rol(usuario_usuario, rol_idrol) values ('jlopez', 3);

insert into usuario_rol(usuario_usuario, rol_idrol) values ('jsanchez', 1);
insert into usuario_rol(usuario_usuario, rol_idrol) values ('jsanchez', 3);

insert into usuario_rol(usuario_usuario, rol_idrol) values ('jperez', 1);
insert into usuario_rol(usuario_usuario, rol_idrol) values ('jperez', 2);