require 'pry'

class Game
    attr_accessor :pinos, :pinos_derrubados, :jogadas

	def initialize
        @pinos, @pinos_derrubados = 10, 0
        @jogadas = []
	end

    def play(pinos_derrubados)
        jogadas << pinos_derrubados
        if jogadas[0] == 10
            return 20
        else
            jogadas.inject(:+)
        end
    end
end
