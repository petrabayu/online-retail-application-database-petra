-- query untuk melihat Kategori barang yang paling banyak barangnya.

use ecommerce;
select sum(stock) ,category from product
GROUP BY category
ORDER BY sum(stock) DESC

