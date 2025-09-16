/*You are given a table, BST, containing two columns: N and P, where N represents the value of a node in Binary Tree, and P is the parent of N.
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:
Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.*/
select n, case when p is null then 'Root' when n not in(select distinct p from bst where p is not null) then 'Leaf' else 'Inner' end from bst order by n;
