use KampusDB

SELECT M.NamaMahasiswa, MK.NamaMK
FROM Mahasiswa M 
CROSS JOIN MataKuliah MK;

SELECT D.NamaDosen, R.KodeRuangan
FROM Dosen D
CROSS JOIN Ruangan R;

SELECT M.NamaMahasiswa, K.MataKuliahID
FROM Mahasiswa M 
LEFT JOIN KRS K ON M.MahasiswaID = K.MahasiswaID; 

SELECT MK.NamaMK, H.Hari
FROM MataKuliah MK
LEFT JOIN JadwalKuliah H ON MK.MataKuliahID = H.MataKuliahID;