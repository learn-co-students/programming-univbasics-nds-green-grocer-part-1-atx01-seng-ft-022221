require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  collection.each do |items|
    if items[:item]== name
      return items
    end
  end 
nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart=[]
  cart.each do |cart_item|
    item_name=cart_item[:item]
    item_info=find_item_by_name_in_collection(item_name, consolidated_cart)
    if item_info
      item_info[:count] +=1 
      else
        consolidated_cart << {
          :item => item_name,
          :price => cart_item[:price],
          :clearance => cart_item[:clearance],
          :count => 1 }
      end
  end
  consolidated_cart
end


  