SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION SkrijDecimalke 
	(@input money) 
RETURNS varchar(50)
/*WITH ENCRYPTION*/ AS

/*  11.02.03, JL: formatiranje decimalne številke na dve decimalni mesti z rezanjem odvečnih decimalnih ničel
 *
 */

BEGIN
    DECLARE @out varchar(50)
  -- pretvorim v formatiran string (145,876,569.12)
    SET @out = CONVERT(varchar(50), ROUND(@input,2), 1)
  -- če je zadnja cifra 0, jo odrežem
    IF RIGHT(@out, 1) = '0' SET @out = LEFT(@out, LEN(@out)-1)
    IF RIGHT(@out, 1) = '0' SET @out = LEFT(@out, LEN(@out)-1)
    IF RIGHT(@out, 1) = '0' SET @out = LEFT(@out, LEN(@out)-1)
    IF RIGHT(@out, 1) = '0' SET @out = LEFT(@out, LEN(@out)-1)
  -- če sem odrezal vse do decimalne pike, odrežem tudi njo
    IF RIGHT(@out, 1) = '.' SET @out = LEFT(@out, LEN(@out)-1)

  -- zamenjam piko in vejico
    SET @out = REPLACE(REPLACE(REPLACE(@out, '.', ';'), ',', '.'), ';', ',')

	RETURN @out
END


GO
