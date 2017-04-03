INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, created_by, datetime) 
	VALUES (1, 'Product', NULL, 'glyphicon glyphicon-barcode', 1, 'SystemCreate', NOW());

INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Product Purchases for this Month', 12, 'glyphicon glyphicon-file', 1, 'reports/product_purchases_by_month', 'SystemCreate', NOW());