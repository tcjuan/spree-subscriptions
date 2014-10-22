Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                     :name => "add_issues_tab",
                     :insert_top => "[data-hook='admin_product_tabs'], #admin_product_tabs[data-hook]" ,
                     :partial => "spree/admin/products/issues",
                     :disabled => false)