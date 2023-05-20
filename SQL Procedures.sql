use Gimnasio

select * from Operador
select * from usuario
select * from Maquinaria
select * from rutina
select * from ejercicio
select * from Membresia

/* Procedimiento para seleccionar los ejercicios de una rutina en especifica */
create procedure getEjericiosFromrutina @name varchar(20) as
	select * from rutina r join ejercicio e ON r.id_rutina = e.id_rutina and r.tipo = @name
exec getEjericiosFromrutina 'Abdomen'


/* Procedimiento para select */

create procedure getOperadorID @name varchar(40) as
	select * from Operador where Id_Operador = @name
exec getOperadorID 'OP-171'

create procedure getUsuarioID @name varchar(40) as
	select * from Usuario where Id_Usuario = @name
exec getUsuarioID 'US-0'

create procedure getMaquinariaID @name varchar(40) as
	select * from Maquinaria where Id_Maquinaria = @name
exec getMaquinariaID 'IV-0'

create procedure getRutinaID @name varchar(40) as
	select * from Rutina where Id_Rutina = @name
exec getRutinaID 'RU-55'

create procedure getEjericioID @name varchar(40) as
	select * from ejercicio where Id_Ejercicio = @name
exec getEjericioID 'Ej-0'

create procedure getMembresiaID @name varchar(40) as
	select * from Membresia where Id_Membresia = @name
exec getMembresiaID 'MM-0'