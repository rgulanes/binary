INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, created_by, datetime) 
	VALUES (1, 'Members', NULL, 'glyphicon glyphicon-user', 1, 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Members List', 1, 'glyphicon glyphicon-file', 1, 'reports/members_list', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Right Member List', 1, 'glyphicon glyphicon-file', 1, 'reports/right_members_list', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Left Member List', 1, 'glyphicon glyphicon-file', 1, 'reports/left_members_list', 'SystemCreate', NOW());
    
    
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, created_by, datetime) 
	VALUES (1, 'Cash Flow', NULL, 'glyphicon glyphicon-usd', 1, 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Withdrawals for Today', 5, 'glyphicon glyphicon-file', 1, 'reports/withdrawals_today', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Total Pairings for Today', 5, 'glyphicon glyphicon-file', 1, 'reports/total_pairings_today', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Direct Referrals as of Today', 5, 'glyphicon glyphicon-file', 1, 'reports/direct_referrals_today', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Approved Withdrawals as of Today', 5, 'glyphicon glyphicon-file', 1, 'reports/withdrawals_report', 'SystemCreate', NOW());
INSERT INTO tree_node (tree_id, node_desc, parent_node, node_icon, node_status, file_url, created_by, datetime) 
    VALUES (1, 'Commissions as of Today', 5, 'glyphicon glyphicon-file', 1, 'reports/commissions_report', 'SystemCreate', NOW());