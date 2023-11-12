-- query untuk menampilkan bahwa 1 buyer dapat membeli hingga 3 barang berbeda atau lebih
use ecommerce;

select buyer_id, count(buyer_id) as buy
from transaction 
GROUP BY buyer_id
having buy >= 3;