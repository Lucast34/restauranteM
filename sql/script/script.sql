create table Comanda(
	numeroComanda serial primary key,
	mesa int,
	nome varchar(250),
	dt_hrAbertura timestamp,
	dt_hrFechamento timestamp
	
);

select * from Comanda;

create table Pedido(
	id_pedido serial primary key,
	pedido_dt_hr timestamp,
	pratos int,
	id_comandaPedido int,
	id_cardapaioPedido int,
	
	constraint fk_comanda foreign key(id_comandaPedido) references Comanda(numeroComanda),
	constraint fk_cardapio foreign key(id_cardapaioPedido) references Cardapio(id_cardapio)
);

select * from Pedido;

create table Cardapio (
    id_cardapio serial primary key,
    nome varchar(250),
    descricao text,
    preco float,
    estoque int
);

select  * from cardapio c ;

drop table comanda cascade;
drop table pedido;
drop table cardapio cascade;

select * from Cardapio c;
select * from Cardapio c;