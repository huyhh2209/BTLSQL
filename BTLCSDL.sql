USE BTLQLNV
----------------1.Truy vấn thông tin nhân viên-------------------------------------------------
SELECT *
FROM NHANVIEN
----------------2.Truy vấn nhân viên có giới tính là nữ-----------------------------------------
SELECT *
FROM NHANVIEN
WHERE GIOITINH = 'NU'
----------------3.Có tất cả bao nhiêu nhân viên nam---------------------------------------------
SELECT COUNT(MANHANVIEN) AS 'Số Nhân Viên Nam Trong CTy Là'
FROM NHANVIEN
WHERE GIOITINH = 'NAM'

-----------------------------------4.SỐ NGÀY CÔNG TÁC CỦA NHÂN VIÊN------------------------------
	
SELECT NV.MANHANVIEN, NV.HOTEN, DATEDIFF(day,NGAYDI,NGAYVE)as N'Ngày công tác'
FROM NHANVIEN NV INNER JOIN QLCONGTAC QLCT ON NV.MANHANVIEN = QLCT.MANHANVIEN	


-----------------------------------5.nhân viên có họ là PHẠM-------------------------------------
SELECT*
FROM NHANVIEN
WHERE HOTEN LIKE N'Phạm%'
-----------------------------------6.Sắp xếp ngày nhận việc của nhân viên theo thứ tự tăng dần---
SELECT * FROM NHANVIEN
ORDER BY NNVIEC

-----------------------------------7.(đảm nhiệm nhiều dự án nhất)--------------------------------
SELECT TOP(1) pb.TENPHONG, COUNT(da.MADUAN) AS 'Soduan'  
FROM dbo.PHONGBAN pb, dbo.DAMNHIEM dn, dbo.DUAN da
WHERE pb.MAPHONG = dn.MAPHONG AND dn.MADUAN = da.MADUAN
GROUP BY pb.TENPHONG
ORDER BY COUNT(da.MADUAN) DESC


------------------------------------8.phòng ban đảm nhiệm nhiều hơn 1 dự án----------------------------

SELECT pb.TENPHONG, COUNT(da.MADUAN) AS 'Soduan'  
FROM dbo.PHONGBAN pb, dbo.DAMNHIEM dn, dbo.DUAN da
WHERE pb.MAPHONG = dn.MAPHONG AND dn.MADUAN = da.MADUAN
GROUP BY pb.TENPHONG
HAVING COUNT(dn.MADUAN) > 1


------------------------------------9.Lương nhân viên cao nhất -----------------------------------

SELECT TOP(1) nv.HOTEN, l.HESOLUONG*l.LUONGCOBAN AS 'luong' 
FROM dbo.NHANVIEN nv, dbo.LUONG l
WHERE l.MANHANVIEN = nv.MANHANVIEN
ORDER BY l.HESOLUONG*l.LUONGCOBAN DESC



------------------------------------10.Tìm nhân viên vào làm trong 30/5/2014 tới 24/2/2017 ---------

SELECT*
FROM NHANVIEN
WHERE NNVIEC BETWEEN '2014-05-30' AND '2017-02-24'


------------------------------------11.nv lam viec lau nhat-----------------------------------------------------
SELECT top(1)
HOTEN,NNVIEC
FROM NHANVIEN
ORDER BY NNVIEC



