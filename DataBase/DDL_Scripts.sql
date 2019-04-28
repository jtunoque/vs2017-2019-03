EXEC usp_GetAll 'AERO%'

GO

CREATE PROCEDURE usp_GetAll
(
	@filterByName NVARCHAR(100)
)
AS
BEGIN

	SELECT * FROM Artist
	WHERE Name LIKE @filterByName

END

GO

--CREATE OR ALTER
ALTER PROCEDURE usp_InsertArtist
@pName NVARCHAR(120)
AS

BEGIN
	
	IF NOT EXISTS(SELECT ArtistId FROM Artist WHERE Name = @pName)
	BEGIN 
		INSERT INTO Artist(Name)
		VALUES (@pName)

		SELECT SCOPE_IDENTITY()
		
	END
	ELSE
	BEGIN
		SELECT 0
	END
END

GO

CREATE PROCEDURE usp_UpdateArtist
@pName NVARCHAR(120),
@pId INT
AS

BEGIN

	IF NOT EXISTS(SELECT ArtistId FROM Artist 
		WHERE Name = @pName)
	BEGIN
		UPDATE Artist SET Name = @pName
		WHERE ArtistId = @pId
	END

END

CREATE PROCEDURE usp_DeleteArtist
@pId INT
AS

BEGIN

	DELETE FROM Artist 
	WHERE ArtistId = @pId


END


