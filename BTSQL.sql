USE BTLQLNV
----------------1.Truy vấn thông tin nhân viên-------------------
SELECT *
FROM NHANVIEN
----------------2.Truy vấn nhân viên có giới tính là nữ----------
SELECT *
FROM NHANVIEN
WHERE GIOITINH = 'NU'
----------------3.Có tất cả bao nhiêu nhân viên nam--------------
SELECT COUNT(MANHANVIEN) AS 'Số Nhân Viên Nam Trong CTy Là'
FROM NHANVIEN
WHERE GIOITINH = 'NAM'
----------------4.nhân viên có họ là PHẠM------------------------
SELECT*
FROM NHANVIEN
WHERE HOTEN LIKE N'Phạm%'
----------------5.Sắp xếp ngày nhận việc của nhân viên theo thứ tự tăng dần------
SELECT * FROM NHANVIEN
ORDER BY NNVIEC

----------------6.Phòng có đảm nhiệm trên 2 dự án---------------
select*   
from PHONGBAN
where MAPHONG =(
select H1.DONVIDAMNHIEM from DUAN H1
group by H1.DONVIDAMNHIEM
having COUNT( H1.DONVIDAMNHIEM) >= 2
)

----------------7.Nhân viên có lương cao nhất--------------------
select * from NHANVIEN S
where S.LUONGNV >=ALL(
Select S1.LUONGNV FROm NHANVIEN S1
)


----------------8.Tìm nhân viên vào làm trong 30/5/2014 tới 24/2/2019 --------------------

SELECT*
FROM NHANVIEN
WHERE NNVIEC BETWEEN '2014-05-30' AND '2019-02-24'


----------------9.nv lam viec lau nhat-----------------------------------------------------
SELECT top(1)
HOTEN,NNVIEC
FROM NHANVIEN
ORDER BY NNVIEC




