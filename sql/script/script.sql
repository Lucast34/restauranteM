show tables;

create table Comanda(
	numeroComanda serial primary key,
	mesa int,
	nome varchar(250),
	dt_hrAbertura date,
	dt_hrFechamento date
	
);

select * from Comanda;

create table Pedido(
	id_pedido serial primary key,
	pedido_dt_hr date,
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
    preco float,
    estoque int
);

select * from Cardapio c;
