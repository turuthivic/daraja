json.extract! sale, :id, :date, :amount, :quantity, :created_at, :updated_at
json.url sale_url(sale, format: :json)
