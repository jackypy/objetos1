propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
  def initialize(hash)
    @nombre = hash [:nombre]
    @raza = hash [:raza]
    @color = hash [:color]
  end

  def ladrar
    print "#{@nombre} está ladrando!"

  end
end

dog = Dog.new(propiedades)
dog.ladrar
