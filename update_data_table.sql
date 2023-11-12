use ecommerce;

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- mengupdate beberapa data pada tabel buyer
update buyer
set name = "jaka sasongko", address="Jl. Wangi Jeruk no.13", city="Malang", phone_number="081336543121", email="jaka77@gmail.com"
where id=14;

update buyer
set name = "gagas bagas", address="Jl. Katak lompat II no.121", city="Nganjuk", phone_number="089732464001", email="gagas123@gmail.com"
where id=13;

-- mengupdate beberapa data pada tabel seller
update seller
set name = "Ahmad Yoni", address="Jl. Paus V no.1", city="Surabaya", phone_number="085674321009", email="yoni@gmail.com"
where id=4;

update seller
set name = "Malik Ismail", address="Jl. Sumatra no.10", city="Kediri", phone_number="081890789678", email="malikismail@gmail.com"
where id=3;

-- mengupdate beberapa data pada tabel product
update product
set stock = 30, price=1800000
where name = "Xiaomi Redmi 12";

update product
set stock = 50
where name = "Hoodie Uniqlo";


