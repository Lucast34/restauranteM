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
on p.id_cardapai 		opedido = ca.id_cardapio
group by c.mesa;


-- A quantidade de pratos mais pedido

select sum(p.quantidade) qt_pedidos, ca.nome 
from pedido p 
inner join cardapio ca
on p.id_cardapaiopedido  = ca.id_cardapio 
group by ca.nome 
order by qt_pedidos desc;

-- procedure 

create procedure at_estoque(
	v_estoque int,
	v_id_cardapio int
)
language plpgsql
as $$
begin 
	update cardapio set estoque = v_estoque + estoque where v_id_cardapio = id_cardapio;
end;
$$;

drop procedure at_estoque;

select * from cardapio;

call at_estoque(15,7);


-- trigger

CREATE TRIGGER trigger_atualizar_estoque
AFTER INSERT ON Pedido
FOR EACH ROW
EXECUTE FUNCTION( 
  BEGIN
    -- Atualiza o estoque do cardápio, diminuindo pela quantidade do pedido
    UPDATE Cardapio
    SET estoque = estoque - NEW.quantidade
    WHERE Cardapio.id_cardapio = NEW.id_cardapaiopedido;

    -- Retorna o novo registro para completar o INSERT
    RETURN NEW;
  END;
);