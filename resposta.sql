select cli.nome as NomeCliente, house.cor as CorDaCasa, bai.nome as nomeBairro, modelo as NomeDoModelodeCarro
from bairro bai
inner join casa house on
(bai.id_bairro = house.fk_bairro)
inner join cliente cli on
(house.fk_cliente = cli.id_cliente)
inner join carro car on
(cli.id_cliente = car.fk_cliente)