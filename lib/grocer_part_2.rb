require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  discounted_cart = []
  discounted_item = {}
  cart.each do |cart_item|
    current_item = find_item_by_name_in_collection(cart_item[:item], coupons)
    if current_item
      if cart_item[:count] == current_item[:num]
        cart_item[:count] -= current_item[:num]
        discounted_cart << cart_item
        discounted_item = {
          :item => cart_item[:item] + " W/COUPON",
          :price => current_item[:cost] / current_item[:num],
          :clearance => cart_item[:clearance],
          :count => current_item[:num]
        }
        discounted_cart << discounted_item
      elsif cart_item[:count] > current_item[:num]
        cart_item[:count] -= current_item[:num]
        discounted_cart << cart_item
        discounted_item = {
          :item => cart_item[:item] + " W/COUPON",
          :price => current_item[:cost] / current_item[:num],
          :clearance => cart_item[:clearance],
          :count => current_item[:num]
        }
        discounted_cart << discounted_item
      end 
    else 
      discounted_cart << cart_item
    end 
  end 
  discounted_cart
end

def apply_clearance(cart)
<<<<<<< HEAD
  counter = 0 
  while counter < cart.length 
    if cart[counter][:clearance]
      cart[counter][:price] = cart[counter][:price] - (cart[counter][:price] * 0.2)
    end 
    counter += 1
  end 
  cart
=======
  clearanced_cart = []
  cart.each do |item|
    item.each do |item_type, item_detail|
      if item_detail == true 
        item[:price] *= 0.8
        clearanced_cart.push(item)
      else 
        clearanced_cart.push(item)
      end
    end 
  end 
  clearanced_cart
>>>>>>> 4ba54bef8308cc7cc8e4373d305589a6cfc99f0b
end

def checkout(cart, coupons)
  total = 0
<<<<<<< HEAD
  consolidated_cart = consolidate_cart(cart)
  couponed_cart = apply_coupons(consolidated_cart, coupons)
  clearanced_cart = apply_clearance(couponed_cart)
  clearanced_cart.each do |cart_item|
=======
  binding.pry
  consolidate_cart(cart)
  apply_coupons(cart, coupons)
  apply_clearance(cart)
  binding.pry
  cart.each do |cart_item|
    binding.pry
>>>>>>> 4ba54bef8308cc7cc8e4373d305589a6cfc99f0b
    total += cart_item[:price] * cart_item[:count]
  end 
  if total > 100 
    total *= 0.9
  end 
  total
end
