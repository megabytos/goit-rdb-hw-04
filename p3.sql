SELECT order_id, date, 
c.name category, 
p.name product, quantity, unit, price, 
CONCAT(e.first_name, ' ', e.last_name) as employee, 
cs.name customer, 
s.name shipper, 
sp.name supplier  
FROM order_details od 
INNER JOIN orders o ON od.order_id = o.id 
INNER JOIN products p ON od.product_id = p.id 
INNER JOIN categories c ON p.category_id = c.id 
INNER JOIN customers cs ON o.customer_id = cs.id 
INNER JOIN employees e ON o.employee_id = e.employee_id 
INNER JOIN shippers s ON o.shipper_id = s.id 
INNER JOIN suppliers sp ON p.supplier_id = sp.id;