

# Add the font style and size
pdf.font "Helvetica"
pdf.font_size 18
pdf.text_box "Invoice # #{ @invoice.id }", :align => :right
 
pdf.font_size 22
pdf.text "Thank you for your order, #{ @invoice.customer_name }.", :align => :center
pdf.move_down 20
 
pdf.font_size 14
pdf.text "Below you can find your order details. We hope you shop with Awesome Company again in the future. Now unleash those fonts like hell have no fury!", :align=> :center

invoiceinfo = [["Item Name", "#{ @invoice.item_name }"], ["Item Price", "#{ @invoice.item_price }"],["Item Quantity", "#{ @invoice.item_qty }"]]
 
pdf.move_down 30
 


 
pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
  count = pdf.page_count
  pdf.text "Page #{count}"
end




