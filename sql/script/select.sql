select * from cardapio ca ;
select * from comanda co ;
select * from pedido p ;

-- select com a comanda aberta 
select dt_hrabertura as dhra,c.dt_hrfechamento from comanda c
where dt_hrfechamento is  null;

-- mostrando o cardapio inteiro

select * from cardapio c ;

-- consultando os pedido

select * from pedido p;

-- verificar quais pratos foram pedidos em cada comanda
-- co.mesa,p.id_pedido,p.id_cardapaioPedido,ca.nome 
select co.mesa,co.numerocomanda , p.id_pedido,p.id_cardapaioPedido,ca.nome from comanda co
inner join pedido p 
on co.numerocomanda  = p.id_comandapedido 
inner join cardapio ca
on p.id_cardapaiopedido = ca.id_cardapio  ;

-- calcular 

select c.mesa,sum(ca.preco)as total
from comanda c 
inner join pedido p 
on c.numerocomanda = p.id_comandapedido
inner join cardapio ca
on p.id_cardapaiopedido = ca.id_cardapio
group by c.mesa;



































