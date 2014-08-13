json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :customer_name, :item_name, :item_price, :item_qty
  json.url invoice_url(invoice, format: :json)
end
