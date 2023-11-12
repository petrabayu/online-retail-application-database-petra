USE ecommerce;

-- DELETE FROM table_name WHERE condition;

-- menghapus data pada buyer dengan id yang diatas 10
delete from buyer where id>10;
-- menhapus data pada buyer ketika nama = Cassie Matusson
delete from buyer where name="Cassie Matusson";


-- menghapus data pada seller dengan id yang diatas 10
delete from seller where id>10;
-- menghapus data pada seller ketika nama = Elane Entwistle
delete from seller where name="Elane Entwistle";

-- menghapus data pada produk dengan jumlah stok kurang dari 30
delete from product where stock < 30;
-- menghapus data pada produk dengan ratings = 8
delete from product where ratings = 8;
-- menghapus data pada produk dengan harga lebih dari 10000000
delete from product where price > 10000000;

-- menghapus data pada transaction ketika transaction_date dilakukan sebelum tanggal 2023-10-15
delete from transaction where transaction_date < '2023-10-15';