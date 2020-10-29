ALTER PROCEDURE SP_Transferencia
	@IdClube INT,
	@IdJogador INT

AS
BEGIN
UPDATE Jogador
SET ClubeId = @IdClube
WHERE Id = @IdJogador
END

	EXEC SP_Transferencia 3,3

	SELECT * FROM Jogador