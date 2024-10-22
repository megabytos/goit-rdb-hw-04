SELECT count(*) as orders_count  
FROM order_details od 
INNER JOIN orders o ON od.order_id = o.id 
INNER JOIN products p ON od.product_id = p.id 
INNER JOIN categories c ON p.category_id = c.id 
RIGHT JOIN customers cs ON o.customer_id = cs.id 
LEFT JOIN employees e ON o.employee_id = e.employee_id 
LEFT JOIN shippers s ON o.shipper_id = s.id 
LEFT JOIN suppliers sp ON p.supplier_id = sp.id;

-- при використанні RIGHT/LEFT JOIN Рядків стало більше, тому що RIGHT/LEFT JOIN включають рядки які не мають відповідностей в правій/лівій таблиці
-- у нашому випадку в таблиці customers є кілька customers, які не замовляли товар і їх немає в таблиці orders