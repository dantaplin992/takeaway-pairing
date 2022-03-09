class Takeaway
  def initialize
    @menu = {"Pepperoni" => 10, "Margarita" => 9, "Hawaiian" => 11}
  end 

  def menu
    @menu
  end

  def view_menu
    arr = [] 
    @menu.each { |k, i|
      arr << "#{k.to_s}: £#{i.to_s}" }
      arr.join(", ")
  end

  def select_item(order, item)
    order.add(item, @menu[item])
  end
end

class Order
  def initialize
    @current_order = []
  end
  
  def add(name, price)
    @current_order << {"name" => name, "price" => price}
  end

  def show_reciept
    reciept = []
    total_price = 0
    @current_order.each {|i|
      reciept << "#{i["name"]}: £#{i["price"]}"
      total_price += i["price"].to_i
  }
    reciept << "Total: £#{total_price}"
    return reciept.join(", ")
  end
end 