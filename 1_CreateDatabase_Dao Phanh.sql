CREATE DATABASE MX;


-- 1. MX_SANPHAM TABLE:
DROP TABLE MX_SANPHAM;

CREATE TABLE MX_SANPHAM (
      ProductId CHAR(6)
    , ProductName NVARCHAR(50)
    , ProductCategoryID CHAR(1)
    , CategoryName NVARCHAR(20)
    , Price INT
    , SalesStartDate DATE
    , SalesEndDate DATE
);

-- Step 1: Use Excel formular to concat all column first
-- Step 2: Use Insert Into to add values into table
INSERT INTO MX_SANPHAM ([ProductId],[ProductName],[ProductCategoryID],[CategoryName],[Price],[SalesStartDate],[SalesEndDate])
VALUES ('MXSP01',N'Chip máy tính Intel',1,N'Chip',55,'02/02/2022','10/10/2024')
    , ('MXSP02',N'Chip máy tính Amd',1,N'Chip',50,'02/02/2022','10/10/2024')
    , ('MXSP03',N'Màn hình máy tính LG',2,N'Monitor',100,'02/02/2022','10/10/2024')
    , ('MXSP04',N'Màn hình máy tính Mac',2,N'Monitor',280,'02/02/2022','10/10/2024')
    , ('MXSP05',N'Màn hình máy tính Sony',2,N'Monitor',180,'02/06/2022','10/10/2024')
    , ('MXSP06',N'Bàn phím cơ Razer',3,N'Keyboard',60,'02/07/2022','10/10/2024')
    , ('MXSP07',N'Bàn phím cơ DareU',3,N'Keyboard',40,'02/07/2022','10/10/2024')
    , ('MXSP08',N'Bàn phím cơ Rapoo',3,N'Keyboard',62,'02/07/2022','10/10/2024')
    , ('MXSP09',N'Chuột Logitech',4,N'Mouse',30,'02/07/2022','10/10/2024')
    , ('MXSP10',N'Chuột Asus',4,N'Mouse',60,'02/07/2022','10/10/2024')
    , ('MXSP11',N'Chuột HyperX',4,N'Mouse',80,'02/07/2022','10/10/2024')
    , ('MXSP12',N'Tai nghe Sony',5,N'Headphone',35,'02/10/2022','10/10/2024')
    , ('MXSP13',N'Tai nghe Razer',5,N'Headphone',30,'02/10/2022','10/10/2024')
    , ('MXSP14',N'Tai nghe HyperX',5,N'Headphone',40,'02/10/2022','10/10/2024')
    , ('MXSP15',N'RAM Desktop 4GB',6,N'RAM',25,'02/10/2022','10/10/2024')
    , ('MXSP16',N'RAM Desktop 8GB',6,N'RAM',42,'02/10/2022','10/10/2024')
    , ('MXSP17',N'RAM Desktop 16GB',6,N'RAM',80,'02/13/2022','10/10/2024')
    , ('MXSP18',N'Ổ cứng HDD 512 GB',7,N'Disk',32,'02/13/2022','10/10/2024')
    , ('MXSP19',N'Ổ cứng HDD 1 TB',7,N'Disk',60,'02/13/2022','10/10/2024')
    , ('MXSP20',N'Ổ cứng SSD 128 GB',7,N'Disk',30,'02/16/2022','10/10/2024')
    , ('MXSP21',N'Ổ cứng SSD 512GB',7,N'Disk',59,'02/17/2022','10/10/2024');

SELECT *
FROM MX_SANPHAM;


-- MX_NHANVIEN TABLE:
DROP TABLE MX_NHANVIEN;

CREATE TABLE MX_NHANVIEN (
      EmID CHAR(5)
    , EmName NVARCHAR(50)
    , Sex NVARCHAR(10)
    , TaxCode CHAR(7)
    , Email NVARCHAR(50)
    , Address NVARCHAR(20)
    , Salary INT
    , JobTitle NVARCHAR(50)
    , DepID CHAR(1)
    , DepName NVARCHAR(20)
    , StartDate DATE
);

-- Step 1: Use Excel formular to concat all column first
-- Step 2: Use Insert Into to add values into table
INSERT INTO MX_NHANVIEN ([EmID],[EmName],[Sex],[TaxCode],[Email],[Address],[Salary],[JobTitle],[DepID],[DepName],[StartDate])
VALUES 
  ('MX001', N'Nguyễn Đình Phước',N'Nam',1234567,N'phuocnd@mxco.com',N'Nghệ An', 5000,N'Tổng giám đốc',1,N'Head Office','01/01/2020')
, ('MX002', N'Hoàng Hải Anh',N'Nam',1234568,N'phuocnd@mxco.com',N'Nghệ An', 3500,N'Phó giám đốc',1,N'Head Office','01/01/2020')
, ('MX003', N'Đỗ Đắc Hải',N'Nam',1234569,N'haidd@mxco.com',N'Hà Nội', 3000,N'Trưởng phòng tài vụ',2,N'Tài chính','01/01/2020')
, ('MX004', N'Nguyễn Lê Chí Bẻo',N'Nữ',1234570,N'beonlc@mxco.com',N'Quảng Bình', 100,N'Bảo vệ',3,N'Nghiệp vụ','01/01/2020')
, ('MX005', N'Lê Nhật Minh',N'Nam',1234571,N'minhln@mxco.com',N'Sài Gòn', 3000,N'Trưởng phòng dữ liệu',4,N'Data','01/01/2020')
, ('MX006', N'Nguyễn Hữu Đạt',N'Nam',1234572,N'datnh@mxco.com',N'Hà Nội', 2999,N'Phó phòng dữ liệu',4,N'Data','01/01/2020')
, ('MX007', N'Trần Đức Thuận',N'Nam',1234573,N'thuantd@mxco.com',N'Sài Gòn', 3001,N'Giám đốc công nghệ',1,N'Head Office','01/01/2020')
, ('MX008', N'Nguyễn Ngọc Minh',N'Nam',1234574,N'minhnn@mxco.com',N'Quảng Bình', 100,N'Giữ xe',3,N'Nghiệp vụ','01/01/2020')
, ('MX009', N'Đoàn Ngọc Thảo',N'Nữ',1234575,N'thaodn@mx.com',N'Long An', 2000,N'Chuyên viên phân tích rủi ro',4,N'Data','01/01/2020')
, ('MX010', N'Lê Thảo Mai',N'Nữ',1234576,N'mailt@mxco.com',N'Bình Phước', 1000,N'Kế toán',5,N'Kế toán','01/01/2020')
, ('MX011', N'Nguyễn Quốc Huy',N'Nam',1234577,N'huynq@mxco.com',N'Sài Gòn', 2000,N'Kĩ sư AI',4,N'Data','01/01/2020')
, ('MX012', N'Trần Đăng Khoa',N'Nam',1234578,N'khoatd@mxco.com',N'Đồng Nai', 2000,N'Kĩ sư AI',4,N'Data','01/01/2020')
, ('MX013', N'Nguyễn Trần Trung Hiếu',N'Nam',1234579,N'hieuntt@mxco.com',N'Quảng Nam', 2000,N'Chuyên viên phân tích rủi ro',4,N'Data','01/01/2020')
, ('MX014', N'Nguyễn Trung Hiếu',N'Nam',1234580,N'hieunt@mxco.com',N'Hà Nội', 4999,N'Giám đốc sản phẩm',1,N'Head Office','01/01/2020')
, ('MX015', N'Nguyễn Văn Cường ',N'Nữ',1234581,N'cuongnv@mxco.com',N'Hà Nội', 100,N'Bảo vệ',3,N'Nghiệp vụ','01/01/2020')
, ('MX016', N'Trần Ngọc Tân',N'Nữ',1234582,N'tantn@mxco.com',N'Hà Nội', 100,N'Bảo vệ',3,N'Nghiệp vụ','01/01/2020')
, ('MX017', N'Lê Đức Hiếu',N'Nam',1234583,N'hieuld@mxco.com',N'Hà Nội', 2000,N'Giám đốc bán hàng',5,N'Sales','01/01/2020')
, ('MX018', N'Lê Quỳnh Trang',N'Nữ',1234584,N'tranglq@mxco.com',N'Hà Nội', 2000,N'Chuyên viên phân tích rủi ro',4,N'Data','01/01/2020')
, ('MX019', N'Trần Đức Trung',N'Nam',1234585,N'trungtd@mxco.com',N'Hà Nội', 3000,N'Trưởng phòng sản phẩm AI',4,N'Data','01/01/2020')
, ('MX020', N'Nguyễn Đức Bình',N'Nam',1234586,N'binhnd@mxco.com',N'Quảng Ninh', 1000,N'Nhân viên bán hàng',5,N'Sales','01/01/2020')
, ('MX021', N'Đỗ Ngọc Ánh',N'Nữ',1234587,N'anhdn@mxco.com',N'Hà Nội', 1000,N'Nhân viên bán hàng',5,N'Sales','01/01/2020')
, ('MX022', N'Nguyễn Ngọc Anh ',N'Nữ',1234588,N'anhnn@mxco.com',N'Hà Nội', 1000,N'Nhân viên bán hàng',5,N'Sales','01/01/2020')
, ('MX023', N'Nguyễn Văn Đức',N'Nam',1234589,N'anlh@mxco.com',N'Hải Phòng', 1000,N'Nhân viên bán hàng',5,N'Sales','01/01/2020')
, ('MX024', N'Trần Hải Đăng',N'Nam',1234590,N'ducth@mxco.com',N'Hải Phòng', 1000,N'Nhân viên bán hàng',5,N'Sales','03/23/2020')
, ('MX025', N'Nguyễn Hoài Linh',N'Nữ',1234591,N'linhnh@mxco.com',N'Hải Phòng', 1000,N'Nhân viên bán hàng',5,N'Sales','01/20/2020')
, ('MX026', N'Nguyễn Thị Linh',N'Nữ',1234592,N'linhnt@mxco.com',N'Hải Phòng', 1000,N'Nhân viên bán hàng',5,N'Sales','04/15/2021');


SELECT *
FROM MX_NHANVIEN;


-- MX_HOADON TABLE:
DROP TABLE MX_HOADON;

CREATE TABLE MX_HOADON (
      OrderID CHAR(5)
    , OrderLine VARCHAR(2)
    , SalesID CHAR(5)
    , CusID CHAR(5)
    , ProductID CHAR(6)
    , Type VARCHAR(10)
    , QTY INT
    , Price INT
    , TotalLine INT
    , DateCreate DATE
    , OrderDate DATE
);

-- Step 1: Use Excel formular to concat all column first
-- Step 2: Use Insert Into to add values into table
INSERT INTO MX_HOADON ([OrderID],[OrderLine],[SalesID],[CusID],[ProductID],[Type],[QTY],[Price],[TotalLine],[DateCreate],[OrderDate])
VALUES 
  ('HD001', 1,'MX020','KH001','MXSP01','ONLINE', 1,55,55,'03/04/2022','03/03/2022')
, ('HD001', 2,'MX020','KH001','MXSP02','ONLINE', 1,50,50,'03/04/2022','03/03/2022')
, ('HD001', 3,'MX020','KH001','MXSP03','ONLINE', 1,100,100,'03/04/2022','03/03/2022')
, ('HD002', 4,'MX023','KH004','MXSP04','OFFLINE', 1,280,280,'03/04/2022','03/03/2022')
, ('HD003', 5,'MX024','KH005','MXSP05','OFFLINE', 1,180,180,'03/04/2022','03/03/2022')
, ('HD004', 6,'MX025','KH006','MXSP06','OFFLINE', 1,60,60,'03/04/2022','03/03/2022')
, ('HD005', 7,'MX023','KH006','MXSP07','OFFLINE', 1,40,40,'03/04/2022','03/03/2022')
, ('HD005', 8,'MX023','KH006','MXSP08','OFFLINE', 1,62,62,'03/04/2022','03/03/2022')
, ('HD005', 9,'MX023','KH006','MXSP09','OFFLINE', 2,30,60,'03/04/2022','03/03/2022')
, ('HD005', 10,'MX023','KH006','MXSP10','OFFLINE', 2,60,120,'03/04/2022','03/03/2022')
, ('HD006', 11,'MX026','KH006','MXSP11','ONLINE', 2,80,160,'03/04/2022','03/03/2022')
, ('HD007', 12,'MX026','KH006','MXSP12','ONLINE', 2,35,70,'03/04/2022','03/03/2022')
, ('HD008', 13,'MX020','KH006','MXSP13','ONLINE', 2,30,60,'03/04/2022','03/03/2022')
, ('HD009', 14,'MX026','KH014','MXSP14','ONLINE', 2,40,80,'03/04/2022','03/03/2022')
, ('HD010', 15,'MX021','KH015','MXSP15','ONLINE', 2,25,50,'03/04/2022','03/03/2022')
, ('HD011', 16,'MX026','KH022','MXSP16','ONLINE', 2,42,84,'03/04/2022','03/03/2022')
, ('HD012', 17,'MX023','KH015','MXSP17','ONLINE', 2,80,160,'03/04/2022','03/03/2022')
, ('HD013', 18,'MX022','KH015','MXSP18','ONLINE', 2,32,64,'03/04/2022','03/03/2022')
, ('HD014', 19,'MX026','KH015','MXSP19','ONLINE', 2,60,120,'03/04/2022','03/03/2022')
, ('HD015', 20,'MX026','KH015','MXSP20','ONLINE', 2,30,60,'03/04/2022','03/03/2022')
, ('HD016', 21,'MX026','KH021','MXSP21','ONLINE', 2,59,118,'03/04/2022','03/03/2022')
, ('HD017', 22,'MX026','KH022','MXSP18','ONLINE', 2,32,64,'03/04/2022','03/03/2022')
, ('HD018', 23,'MX026','KH023','MXSP19','ONLINE', 2,60,120,'03/04/2022','03/03/2022')
, ('HD019', 24,'MX020','KH024','MXSP20','OFFLINE', 2,30,60,'03/04/2022','03/03/2022')
, ('HD020', 25,'MX020','KH015','MXSP21','OFFLINE', 2,59,118,'03/04/2022','03/03/2022')
, ('HD021', 26,'MX020','KH026','MXSP21','OFFLINE', 2,59,118,'03/04/2022','03/03/2022')
, ('HD022', 27,'MX022','KH027','MXSP21','OFFLINE', 2,59,118,'03/04/2022','03/03/2022')
, ('HD023', 28,'MX020','KH006','MXSP21','OFFLINE', 2,59,118,'03/04/2022','03/03/2022')
, ('HD024', 29,'MX020','KH029','MXSP21','OFFLINE', 2,59,118,'03/04/2022','03/03/2022');

SELECT *
FROM MX_HOADON;

-- 2.1: lấy ra dữ liệu của các sản phẩm thuộc loại ‘Disk’ để làm báo cáo cho BOD.
FROM MX_SANPHAM
WHERE CategoryName = 'Disk';

-- 2.2: các nhân viên có quê quán từ 2 tỉnh Quảng Bình và Quảng Trị.
SELECT *
FROM MX_NHANVIEN
WHERE Address IN (N'Quảng Bình', N'Quảng Trị');

-- 3.1: BOD dừng bán sản phẩm ‘Ổ cứng HDD 1TB’ từ ngày 31/12/2022. 
UPDATE MX_SANPHAM
SET SalesEndDate = '12/31/2022'
WHERE ProductName = N'Ổ cứng HDD 1 TB';

-- 3.2: Thăng chức cho nhân viên ‘Nguyễn Lê Chí Bẻo’ từ vị trí Bảo vệ thành vị trí ‘Trưởng bộ phận an ninh’ với mức lương mới là 150$.  
UPDATE MX_NHANVIEN
SET JobTitle = N'Trưởng bộ phận an ninh'
    , Salary = 150
WHERE EmName = N'Nguyễn Lê Chí Bẻo'

-- 3.3 ‘Đỗ Đắc Hải’ chuyển sang phòng Data để công tác với chức danh ‘Chuyên viên phân tích rủi ro’, mức lương là 2000$. 
UPDATE MX_NHANVIEN
SET JobTitle = N'Chuyên viên phân tích rủi ro'
    , Salary = 2000
WHERE EmName = N'Đỗ Đắc Hải'