DELIMITER //
CREATE PROCEDURE atualizarTotalHoras()
BEGIN
update registroponto
set
totalHorasDia = addtime(timediff(horarioIntervalo, horarioEntrada),timediff(horarioSaida, horarioRetorno))
     where id > 0;
END//
DELIMITER ;

-- CALL atualizarTotalHoras();

-- DROP PROCEDURE atualizarTotalHoras;
