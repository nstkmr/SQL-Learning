--
-- 6.) Suppliers and ContactTitles
--   • In the Suppliers table, show the SupplierID, ContactName, and
--     Contact Title for those Suppliers whose ContactTitle is not Marketing Manager.
--
SELECT supplier_id, contact_name, contact_title
from suppliers
where contact_title!='Marketing Manager';