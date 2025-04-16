SELECT v.customer_id,count(v.visit_id) as count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
where t.visit_id IS NULL
GROUP BY v.customer_id;
