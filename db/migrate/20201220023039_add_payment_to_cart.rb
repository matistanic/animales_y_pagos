class AddPaymentToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :payment, :string
    add_column :carts, :total, :decimal
  end
end
