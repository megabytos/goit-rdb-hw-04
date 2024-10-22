SELECT c.name category, COUNT(*) count, AVG(od.quantity) quantity 
FROM order_details od 
INNER JOIN orders o ON od.order_id = o.id 
INNER JOIN products p ON od.product_id = p.id 
INNER JOIN categories c ON p.category_id = c.id 
INNER JOIN customers cs ON o.customer_id = cs.id 
INNER JOIN employees e ON o.employee_id = e.employee_id 
INNER JOIN shippers s ON o.shipper_id = s.id 
INNER JOIN suppliers sp ON p.supplier_id = sp.id 
GROUP BY c.name 
HAVING quantity > 21;