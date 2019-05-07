class Product
  attr_reader :name
  def initialize(name, *precios)
    @name = name
    @precios = precios.map(&:to_i)
    #@large = large
    #@medium = medium
    #@small = small
    #@xsmall = xsmall
  end

  def avarage
    @precios.inject(&:+)/@precios.size
  end

end

  products_list = []
  data = []

  File.open('catalogo.txt', 'r') { |file| data = file.readlines}
  data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
  puts product.name
  puts product.avarage
end
