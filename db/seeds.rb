require 'csv'

puts "Destroying all companies and associated data"

puts "creating companies"
CSV.foreach(Rails.root.join('lib/packform_data/companies.csv'), headers: true) do |row|
    Company.create!(name: row[1])
end
puts "finished creating companies"

puts "creating customers"
CSV.foreach(Rails.root.join('lib/packform_data/customers.csv'), headers: true) do |row|
    Customer.create!(
        user_id: row[1],
        login: row[2],
        password: row[3].to_i,
        name: row[4],
        company_id: row[5].to_i,
        credit_card: 12345678
    )
end
puts "finished creating customers"

puts "creating orders"
CSV.foreach(Rails.root.join('lib/packform_data/orders.csv'), headers: true) do |row|
    Order.create!(
        order_name: row[2],
        customer_id: row[3]
    )
end

puts "creating order_items"
CSV.foreach(Rails.root.join('lib/packform_data/order_items.csv'), headers: true) do |row|
    OrderItem.create!(
        order_id: row[1].to_i,
        price_per_unit: row[2],
        quantity: row[3].to_i,
        product: row[4]
    )
end
puts "finished creating order_items"

puts "started creating deliveries"
CSV.foreach(Rails.root.join('lib/packform_data/deliveries.csv'), headers: true) do |row|
    Delivery.create!(
        order_item_id: row[1].to_i,
        delivered_quantity: row[2].to_i
    )
end
puts "finished creating deliveries"