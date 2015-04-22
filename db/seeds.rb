# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

Gene.create(name: 'abc', variance: 'yyx', info:'Mortal para crianças menores que 12 anos.')
Gene.create(name: 'xyz', variance: 'x+', info:'Muito raro.')
Gene.create(name: 'ggf', variance: 'zap', info:'')
Gene.create(name: 'ab+', variance: 'zyp', info:'Apenas um gene')

Disease.create(name: 'adc', state: 'SP', quantity: 200, gene_id: 1)
Disease.create(name: 'dex', state: 'SC', quantity: 100, gene_id: 1)
Disease.create(name: 'yyqr', state: 'BH', quantity: 16524, gene_id: 2)

