require_relative '../modelos/racas/humano'
require_relative '../modelos/racas/elfo'
require_relative '../modelos/racas/anao'
require_relative '../modelos/racas/orc'
require_relative '../modelos/personagem'
require_relative '../repositorios/personagens_repositorio'

class PersonagemControle
  attr_accessor :repositorio

  def initialize
    @repositorio = PersonagensRepositorio.new
  end

  def listar
    repositorio.pegar_todos.each do |p|
      puts p.nome
    end
  end

  def criar
    system 'clear'

    puts 'Informe o nome:'
    nome = gets
    puts 'Informe a idade:'
    idade = gets.strip.to_i

    opcao_classe = 0

    while opcao_classe < 1 || opcao_classe > 4
      puts 'Informe a raca:'
      puts '1. Humano'
      puts '2. Elfo'
      puts '3. Anão'
      puts '4. Orc'
      opcao_classe = gets.strip.to_i

      case opcao_classe
      when 1
        classe = Anao.new
      when 2
        classe = Elfo.new
      when 3
        classe = Anao.new
      when 4
        classe = Orc.new
      end
    end
    personagem = Personagem.new nome, idade, :classe
    repositorio.adicionar :personagem
  end
end
