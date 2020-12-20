class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    has_many :products, through: :order_items
    has_one :payment

    def add_product(product_id, quantity)
        product = Product.find(product_id)
        if product
          order_items.create(product_id: product.id, quantity: quantity, price: product.price)
          compute_total
        end
    end
    
    def compute_total
        sum = 0
        order_items.each do |item|
          sum += item.price
        end
        update_attribute(:total, sum)
    end
end