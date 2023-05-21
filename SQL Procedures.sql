use Gimnasio

exec getOperadores
exec getUsuarios
exec getMaquinarias
exec getRutinas
exec getEjercicios
exec getMembresias

/* Procedimiento para seleccionar los ejercicios de una rutina en especifica */
create procedure getEjericiosFromrutina @name varchar(20) as
	select * from rutina r join ejercicio e ON r.id_rutina = e.id_rutina and r.tipo = @name
exec getEjericiosFromrutina 'Abdomen'


/* Procedimiento para select */

create procedure getOperadorID @name varchar(40) as
	select * from Operador where Id_Operador = @name
exec getOperadorID 'OP-171'

create procedure getOperadores as
	select * from Operador
exec getOperadores

create procedure getUsuarioID @name varchar(40) as
	select * from Usuario where Id_Usuario = @name
exec getUsuarioID 'US-0'
create procedure getUsuarios as
	select * from Usuario

create procedure getMaquinariaID @name varchar(40) as
	select * from Maquinaria where Id_Maquinaria = @name
exec getMaquinariaID 'IV-0'
create procedure getMaquinarias as
	select * from Maquinaria

create procedure getRutinaID @name varchar(40) as
	select * from Rutina where Id_Rutina = @name
exec getRutinaID 'RU-55'
create procedure getRutinas as
	select * from Rutina

create procedure getEjericioID @name varchar(40) as
	select * from ejercicio where Id_Ejercicio = @name
exec getEjericioID 'Ej-0'
create procedure getEjercicios as
	select * from Ejercicio

create procedure getMembresiaID @name varchar(40) as
	select * from Membresia where Id_Membresia = @name
exec getMembresiaID 'MM-0'
create procedure getMembresias as
	select * from Membresia

/*	Insertar en tablas	*/
create procedure insertOperador @v1 varchar(40), @v2 varchar(40), @v3 varchar(40), @v4 varchar(40), @v5 varchar(40),
								@v6 varchar(40), @v7 varchar(40), @v8 varchar(40) as
	insert into Operador values(@v1, @v2, @v3, @v4, @v5, @v6, @v7, @v8)

create procedure insertMaquinaria @v1 varchar(40), @v2 varchar(40), @v3 varchar(40), @v4 varchar(40) as
	insert into Maquinaria values(@v1, @v2, @v3, @v4)

create procedure insertRutina @v1 varchar(40), @v2 varchar(40), @v3 varchar(40), @v4 varchar(40) as
	insert into Rutina values(@v1, @v2, @v3, @v4)

create procedure insertEjercicio @v1 varchar(40), @v2 varchar(40), @v3 varchar(40) as
	insert into Ejercicio values(@v1, @v2, @v3)

/*	Modificar en tablas	*/
create procedure updateMaquinaria @v1 varchar(40), @v2 varchar(40), @vID varchar(6) as
	update Maquinaria set Nombre = @v1, Cantidad = @v2 where Id_Maquinaria = @vID

/*	Elimina en tablas	*/
create procedure deleteMaquinaria @ID varchar(6) as
	delete from Maquinaria where Id_Maquinaria = @ID
