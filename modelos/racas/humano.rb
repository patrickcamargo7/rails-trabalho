require_relative 'raca'

class Humano < Raca
  def initialize
    @vida = 20
    @ataque = 8
    @defesa = 8
    @inteligencia = 10
    @forca = 10
  end
end
