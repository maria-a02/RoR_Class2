#Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb.
require_relative 'carta.rb'

#Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
class Deck
    attr_accessor :cards

#Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
    def initialize
        @cards = []
        (1..3).each do |num|
            %w[C D E T].each do |kind|
                @cards.push Card.new(num,kind)
            end
        end
    end

#Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle .
    def shuffles
        self.cards.shuffle
    end
#Crear el método sacar que permita retirar la primera carta de la baraja Tip: Utilizar .pop .
    def draw
        self.cards.pop
    end
#Crear el método repartir mano que devolverá un arreglo con las primeras 5 cartas de la baraja.
    def initial_draw
        self.cards.pop(5)
    end
end

spanish_cards = Deck.new
puts spanish_cards.shuffles
puts "------"
puts spanish_cards.draw
puts "------"
puts spanish_cards.initial_draw