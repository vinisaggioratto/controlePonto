use controlaponto;
SELECT * FROM controlaponto.registroponto;
/*
-- saldo de horas de todos os usuarios cadastrados.
select
usu.nome as Usuário,
count(rt.usuario_id) as 'Total dias trabalhados',
time_format( SEC_TO_TIME( SUM( TIME_TO_SEC( rt.saldoHorasDia ) ) ), '%H:%i:%s')
as SaldoHoras from registroponto rt JOIN usuario usu on rt.usuario_id = usu.id
where usuario_id > 0 and  usu.ativo = 'Sim' and dataPonto between '2023-02-13' and '2023-02-14'
group by usuario_id; 
*/

/*
-- saldo de horas individual
select
usuario_id as id,
count(usuario_id) as 'Total dias trabalhados',
time_format( SEC_TO_TIME( SUM( TIME_TO_SEC( saldoHorasDia ) ) ), '%H:%i:%s')
as SaldoHoras from registroponto where usuario_id > 0 and  dataPonto between '2023-02-13' and '2023-02-14'
group by usuario_id; 
*/

/*
update registroponto
set
saldoHorasDia = timediff(totalHorasDia, '08:48:00')
where id > 0;
*/

/*
sum(timediff('08:48:00',totalHorasDia)),
count(usuario_id)
from registroponto
where usuario_id = 1; -- dataponto between '2023-02-01' and '2023-02-15';
*/

/*
select
totalHorasDia as TotalDia,
timediff(totalHorasDia, '08:48:00') as SaldoDia
from registroponto;
*/