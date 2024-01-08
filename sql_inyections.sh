#!/bin/bash
clear
echo "###########################################"
echo "#         SQL Inyections                  #"
echo "###########################################"
sleep 1.2
banner SQL Inyections
echo ""
sleep 1.2
echo "Como primer paso instalamos mariadb-server, apache2 y php-mysql"
echo "Es lo que veremos a continuacion trabajando con bases de datos, servidor Apache y un poco de PHP y Python"
sleep 1.2
figlet Mariadb-Apache
echo "Hasta ahora lo que hicimos fueron levantar los servicios:
>> sudo service mariadb start
>> sudo service apache2 start

si queremos ver los status:
>> service mariadb status

>> sudo lsof -i:3306 (puerto sql) 
>> sudo lsof -i:80 (puerto HTTP - APACHE)"
sleep 3
echo "Ahora vamos a ingresar un poco al sistema:
>> sudo mysql -uroot -p
y luego entramos a la consola de MariaDB


Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 40
Server version: 10.5.21-MariaDB-0+deb11u1 Debian 11

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
+--------------------+
3 rows in set (0,001 sec)

MariaDB [(none)]> "
sleep 2
echo "Si queremos ver las bases de datos, en la consola ingresamos >> show databases; (no olvidar siempre al final de la instruccion ;"
sleep 1.2
echo "Seleccionamos una de las dbase >> use mysql;
>> show tables;
y tenemos la siguiente respuesta:

MariaDB [(none)]> use mysql;
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MariaDB [mysql]> show tables;
+---------------------------+
| Tables_in_mysql           |
+---------------------------+
| column_stats              |
| columns_priv              |
| db                        |
| event                     |
| func                      |
| general_log               |
| global_priv               |
| gtid_slave_pos            |
| help_category             |
| help_keyword              |
| help_relation             |
| help_topic                |
| index_stats               |
| innodb_index_stats        |
| innodb_table_stats        |
| plugin                    |
| proc                      |
| procs_priv                |
| proxies_priv              |
| roles_mapping             |
| servers                   |
| slow_log                  |
| table_stats               |
| tables_priv               |
| time_zone                 |
| time_zone_leap_second     |
| time_zone_name            |
| time_zone_transition      |
| time_zone_transition_type |
| transaction_registry      |
| user                      |
+---------------------------+
31 rows in set (0,001 sec)

MariaDB [mysql]> 
"
sleep 2
figlet cmd-Utiles
echo "Comandos utiles:
>> show tables;
>> describe user; (referencia a la tabla user)
>> select user,password from user where user = 'marianpg';
con esto muestro las tablas, luego veo los componentes de la tabla seleccionada, y finalmente pido que me devuelva el usuario 'marianpg', la contrasena correspondiente"
sleep 2
figlet SQL-Sintesis
echo "Lo más importante que necesitas saber sobre SQL Injection (SQLI) se puede resumir en los siguientes puntos clave:

Definición de SQL Injection (SQLI):
SQLI es una técnica de ataque en aplicaciones web que aprovecha la falta de validación adecuada en la entrada del usuario para ejecutar consultas SQL maliciosas en la base de datos.

Objetivo de SQL Injection:
Los atacantes utilizan SQLI para obtener información confidencial almacenada en la base de datos, como nombres de usuario y contraseñas, o incluso para controlar la base de datos.

Tipos de SQL Injection:

Basada en errores: Explota errores en el código SQL para obtener información.
Basada en tiempo: Utiliza consultas que tardan mucho tiempo en ejecutarse para obtener información.
Basada en booleanos: Emplea expresiones booleanas para obtener información.
Basada en uniones: Combina dos o más consultas en una sola mediante la cláusula "UNION".
Basada en stacked queries: Aprovecha la ejecución de múltiples consultas en una sola sentencia.
Bases de Datos y SQL Injection:

Relacionales: SQLI es más común en bases de datos relacionales como MySQL, SQL Server, Oracle, etc.
NoSQL: Aunque menos común, es posible en bases de datos NoSQL como MongoDB o Cassandra.
Grafos y Objetos: Bases de datos de grafos (Neo4j) y de objetos (db4o) también pueden ser vulnerables.
Prevención de SQL Injection:

Los desarrolladores deben validar adecuadamente la entrada del usuario.
Utilizar técnicas de defensa como la sanitización de entrada.
Preferir la preparación de consultas SQL para evitar la ejecución directa de código SQL no validado.
Herramienta Útil:
Se proporciona un enlace a la utilidad online de 'ExtendsClass' (MySQL Online) para prácticas y pruebas: ExtendsClass MySQL Online

Conclusión:
La comprensión de los riesgos asociados con SQL Injection y la implementación de buenas prácticas de seguridad en el desarrollo web son fundamentales para prevenir este tipo de ataques."
sleep 3

