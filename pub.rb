
class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till.to_f
    @drinks = drinks
  end

  def serve_customer(customer, drink)

    if is_customer_legal(customer) && !is_drunk(customer)
      @till += drink.price
      customer.buy_drink(drink)
    end

  end

  def is_customer_legal(customer)
    return customer.age >=18
  end

  def is_drunk(customer)
    return customer.drunkenness > 150
  end

  # def stock_take
  #   stock = Hash.new()
  #   for drink in @drinks
  #     drinks_hash = { name: drink.name, stock}
  #     stock.add()
  #   end
  # end

end
