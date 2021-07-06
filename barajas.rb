#Utilizar el ejercicio Carta creado en la primera parte y dejarlo en el archivo carta.rb.
require_relative 'carta'

#Crear la clase baraja en el archivo barajas.rb con el atributo cartas, el cual será un arreglo.
class Deck
    attr_accessor :cards

#Al crear una baraja (constructor) se deben generar todas las combinaciones de números y pinta y guardarse dentro del arreglo cartas.
    def initialize()
        @cards = []
        kind = ["C", "D", "T", "E"]
        52.times do |i| 
            self.cards.push(Card.new(rand(1..13), kind.sample))
        end
        puts cards
    end

#Crear el método barajar que debe desordenar el arreglo de cartas Tip: Utilizar .shuffle .
    def shuffle
        self.cards.shuffle
    end
end