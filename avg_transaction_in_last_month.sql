-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
-- select * from transaction;

SELECT buyer_id,count(buyer_id) as purchases_amount,sum(price) as buyer_spent, round(avg(price),0) as average_purchase
FROM transaction t
LEFT JOIN product p 
ON t.product_id = p.id
WHERE transaction_date BETWEEN '2023-10-12' AND '2023-11-12'
group by buyer_id
order by buyer_id;
