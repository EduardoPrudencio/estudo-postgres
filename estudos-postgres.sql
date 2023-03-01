/* CRIANDO CONTAINER COM POSTFRES */

    -- docker run -d \
	-- --name estudo-postgres \
	-- -e POSTGRES_PASSWORD=53105 \
	-- -v /Users/eduardo/Desktop/Volume/postgres:/var/lib/postgresql/data \
	-- -p 5432:5432 \
	-- postgres

/* USUÁRIOS */

	-- criando usuário com senha
	--create user teste 
	
	/* com senha */
	-- with password '123456'
	
	/* com validade de senha */
	-- valid until  '2022-03-01'
	
	/* com permissãoo para criar bancos */
	--createdb
	
	/* sem permissãoo para criar bancos */
	--nocreatedb
	
	/* com permissãoo para criar usuários */
	--createuser
	
	/* com permissãoo para criar usuários */
	--nocreateuser
	
	/* em um grupo existente */
	-- in group development
	
	/* alterando o nome */
	-- alter user rename teste to tester-member

	/* alterando a senha */
	-- alter user teste with password '12345678' 
	
	/* alterando a data de validade */
	-- alter user valid until '2022-04-01'

	/* fazendo um oassword válido para sempre */
	-- alter user teste valid until 'infinity'

	/* Removendo usuário */
	-- drop user teste

	/* exibindo usuário corrente */
	-- select current_user

	/* exibindo usuários do banco de dados */
	-- select usename from pg_user


/* USUÁRIOS */

/* GRUPOS */

	-- criando grupo
	create group development;

	-- inserindo usuário em um grupo
	alter group development add user postgres;

	-- removendo usuário de um grupo
	alter group development drop user postgres;

	--removendo grupo
	drop group development;

	-- exibindo grupos
	select groname from pg_group;

/* GRUPOS */

/* ROLE */

	-- criando roles
	create role teste
	
	-- removenod roles
	drop role teste
	
/* ROLE */

/**/



