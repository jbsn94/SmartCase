# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name: 'Solicitante Nome', email: 'solicitante@email.com', cpf: '123', password: '123', tipo: 'Solicitante')
User.create(name: 'Funcionario Nome', email: 'funcionario@email.com', cpf: '1234', password: '1234', tipo: 'Funcionario')
User.create(name: 'Administrador Nome', email: 'admin@email.com', cpf: '12345', password: '12345', tipo: 'Administrador')