Database :
	Database holds entities. Which are tables, Store procedure, Views
		and indexex, triggers etc.
	We can not create database with same name into same server.
	Rules to create DB :
		DB name can not strat with special char or numbers.
		Space is not allowed in DB name
			Ex : Student database
		If space is required then use underscore('_')
			Ex : Student_Database
		When give DB name first char should be caps

	-- Syntax :
		create database database_name

		CREATE DATABASE database_name

	-- Example :
		Create database Ecommerce_DB

	-- Remove database :
		We can remove DB using a drop word.

		-- Syntax :
			Drop database database_name

		-- Example :
			Drop database Ecommerce_DB

	-- Rename DB
		Rename existing database without drop / delete existing DB.

		-- Syntax :
			Alter database existing_database
			modify name = new_DB_Name

		-- Example :
			Alter database Ecommerce_DB
			modify name = DB_ECommerce

	-- Switch between DB
		When we need to move from one db to another DB.

		-- Example :
			Use DB_ECommerce

			Use BioSysTech_DB
