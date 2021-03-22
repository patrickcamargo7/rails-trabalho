require_relative 'controles/personagens_controle'

personagem_controle = PersonagemControle.new

opcao_menu = 0

while opcao_menu != 6

  system 'clear'

  puts 'Selecione uma opção'
  puts '1 - Adicionar personagem'
  puts '2 - Adicionar classe'
  puts '3 - Treinar personagem'
  puts '4 - Listar personagens'
  puts '5 - Listar classes'
  puts '6 - Sair'

  opcao_menu = gets.strip.to_i

  puts opcao_menu

  case opcao_menu
  when 1
    personagem_controle.criar
  when 4
    personagem_controle.listar
  end

end
