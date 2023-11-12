-- query untuk menampilkan 3 produk yang paling sering dibeli oleh pelanggan.

use ecommerce;

select product_id, count(product_id) as on_transaction
from transaction
GROUP BY product_id
ORDER BY on_transaction DESC
limit 3;
