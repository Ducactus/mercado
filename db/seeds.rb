# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pnomes = {0 => "Arroz",1 => "Feijão", 2 => "Manteiga", 3 => "Presunto",
          :Arroz => 2, :Feijão => 3, :Manteiga => 2, :Presunto => 3.5}

4.times do |i|

    Produto.create(
        nome: "#{pnomes[i]}",
        qtd: 10,
        valor: pnomes[pnomes[i].to_sym]
    )

end

cnomes = {0 => "Pedro", 1 => "Jão", 2 => "Tiago", 3 => "Maria"}

4.times do |i|
    Cliente.create(
        nome: "#{cnomes[i]}",
        email: "example@example.com",
        telefone: "55 5555-5555",
        endereco: "Rua #{i+1} de setembro."
    )

end

user = User.new(:email => 'root@root.com', :password => 'pass', :password_confirmation => 'pass')
user.save