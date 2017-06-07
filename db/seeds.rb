# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cadastrando as ESTADOS..."
states = [
    "Acre - AC",
    "Alagoas - AL",
    "Amapá - AP",
    "Amazonas - AM",
    "Bahia - BA",
    "Ceará - CE",
    "Distrito Federal - DF",
    "Espírito Santo - ES",
    "Goiás - GO",
    "Maranhão - MA",
    "Mato Grosso - MT",
    "Mato Grosso do Sul - MS",
    "Minas Gerais - MG",
    "Pará - PA",
    "Paraíba - PB",
    "Paraná - PR",
    "Pernambuco - PE",
    "Piauí - PI",
    "Rio de Janeiro - RJ",
    "Rio Grande do Norte - RN",
    "Rio Grande do Sul - RS",
    "Rondônia - RO",
    "Roraima - RR",
    "Santa Catarina - SC",
    "São Paulo - SP",
    "Sergipe - SE",
    "Tocantins - TO",
]
states.each do |state|
	State.find_or_create_by(name: states)
end
puts "ESTADOS cadastradas!"
