def find_item_by_name_in_collection(name, collection)
  index = 0

  collection.each do |grocery_item|
    return grocery_item if grocery_item[:item] === name 
    index += 1
  end

  nil
end


def consolidate_cart(cart)
  new_cart = []
<<<<<<< HEAD
  counter = 0 
  while counter < cart.length 
    new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1 
    else 
      new_cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1 
      }
      new_cart << new_cart_item
    end
    counter += 1 
=======
  cart.each do |cart_item|
    new_cart_item = find_item_by_name_in_collection(cart_item[:item], new_cart)
      if new_cart_item != nil 
        new_cart_item[:count] += 1 
      else 
        new_cart_item = {
          :item => cart_item[:item],
          :price => cart_item[:price],
          :clearance => cart_item[:clearance],
          :count => 1 
        }
        new_cart << new_cart_item
      end 
>>>>>>> 4ba54bef8308cc7cc8e4373d305589a6cfc99f0b
  end 
  new_cart
end