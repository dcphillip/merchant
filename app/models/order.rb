class Order < ActiveRecord::Base
  has_many :order_items, dependent: :destroy
  
  def total
    order_items.collect(&:subtotal).sum
  end
end
