use controlaponto;
SELECT * FROM controlaponto.registroponto;

DELIMITER //
CREATE PROCEDURE atualizarSaldoHorasDia()
BEGIN
update registroponto
set
saldoHorasDia = timediff(totalHorasDia, '08:48:00')
where id > 0;
END //
DELIMITER ;

