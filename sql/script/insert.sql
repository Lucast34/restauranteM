// inserts 

select * from comanda c ;



insert into comanda(mesa,nome,dt_hrabertura,dt_hrfechamento)
values
('05','karina','',''),
('06','luciano','',''),
('01','lucas','',''),
('03','gabriel','',''),
('08','matheus','',''),
('09','adriana','',''),
('10','juliana','',''),
('12','pedro','',''),
('11','sandra','',''),
('01','helena','',''),
('06','jose','',''),
('07','eliane','',''),
('08','matheus','',''),
('05','elisa','',''),
('11','luis','',''),
('12','luiz','',''),
('02','carlos','',''),
('08','matheus','',''),
('09','guilherme','',''),
('01','lucas','',''),
('11','maria','',''),
('01','lucas','',''),
('01','vitoria','',''),
('01','vitoria','',''),
('12','ana','',''),
('11','maria clara','',''),
('01','alice','',''),
('06','amanda','',''),
('07','bruna','',''),
('12','julia','',''),
('11','sofia','',''),
('01','samuel','',''),
('06','jessica','',''),
('07','arthur','','');

insert into cardapio (nome,preco,descricao,estoque)
values
('carne de sol','','',''),
('jatinha completa','','',''),
('peixe frito','','',''),
('medalhao de frango','','',''),
('medalhao de carne','','',''),
('bolinho de arroz','','',''),
('porcao de pastel','','',''),
('linguica de frango','','',''),
('linguica de pimenta','','',''),
('coracao de frango','','',''),
('carne de panela com batata','','',''),
('espetinho de peixe assado','','',''),
('espetinho de alcatra com legumes','','',''),
('antartica','','',''),
('brahma','','',''),
('budweiser','','',''),
('corona','','',''),
('skol','','',''),
('itaipava','','',''),
('stella artois','','',''),
('jarra de 2L','','',''),
('agua','','',''),
('agua com gas','','',''),
('caipirinha','','','');

insert into pedido(pedido_dt_hr,pratos,id_comandapedido ,id_cardapaiopedido)
values
('19:05',''),
('20:06',''),
('21:09',''),
('21:10',''),
('21:12',''),
('21:16',''),
('21:36',''),
('22:55',''), -- samuel 
('00:15',''), -- s
('00:19',''), -- s
('16:56',''),
('16:57',''),
('17:03',''),
('17:06',''),
('17:07',''),
('17:12',''),
('17:22',''),
('17:25',''),
('17:30',''),
('17:31','');