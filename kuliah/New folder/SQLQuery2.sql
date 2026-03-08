use KampusDB;

select NamaDosen
from Dosen;

select NamaMK
from MataKuliah;

--manggil dosen dengan mata kuliah--

SELECT D.NamaDosen
FROM Dosen D
JOIN MataKuliah MK
on D.DosenID = MK.DosenID 
WHERE MK.NamaMK = 'Basis Data';

SELECT D.NamaDosen
FROM Dosen D
WHERE D.DosenID = (
	select DosenID 
	from MataKuliah
	where NamaMK = 'Basis Data'
);

--buat mencari nama dosen di data--

--SELECT D.NamaDosen 
--FROM Dosen D
--WHERE D.DosenID = 4

--- cte tabel sementara 
WITH MK_Dosen AS (
	SELECT D.*
FROM Dosen D
JOIN MataKuliah MK
on D.DosenID = MK.DosenID  
)

SELECT * FROM MK_Dosen