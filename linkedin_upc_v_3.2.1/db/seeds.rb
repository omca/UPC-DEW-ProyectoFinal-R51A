# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Distritos (District)
District.delete_all

District.create(:name => 'Cercado de Lima')
District.create(:name => 'Ancón')
District.create(:name => 'Ate')
District.create(:name => 'Barranco')
District.create(:name => 'Breña')
District.create(:name => 'Carabayllo')
District.create(:name => 'Comas')
District.create(:name => 'Chaclacayo')
District.create(:name => 'Chorrillos')
District.create(:name => 'El Agustino')
District.create(:name => 'Jesús María')
District.create(:name => 'La Molina')
District.create(:name => 'La Victoria')
District.create(:name => 'Lince')
District.create(:name => 'Lurigancho')
District.create(:name => 'Lurín')
District.create(:name => 'Magdalena')
District.create(:name => 'Miraflores')
District.create(:name => 'Pachacamac')
District.create(:name => 'Pucusana')
District.create(:name => 'Pueblo Libre')
District.create(:name => 'Puente Piedra')
District.create(:name => 'Punta Negra')
District.create(:name => 'Punta Hermosa')
District.create(:name => 'Rímac')
District.create(:name => 'San Bartolo')
District.create(:name => 'San Isidro')
District.create(:name => 'Independencia')
District.create(:name => 'San Juan de Miraflores')
District.create(:name => 'San Luis')
District.create(:name => 'San Martín de Porres')
District.create(:name => 'San Miguel')
District.create(:name => 'Santiago de Surco')
District.create(:name => 'Surquillo')
District.create(:name => 'Villa María del Triunfo')
District.create(:name => 'San Juan de Lurigancho')
District.create(:name => 'Santa María del Mar')
District.create(:name => 'Santa Rosa')
District.create(:name => 'Los Olivos')
District.create(:name => 'Cieneguilla')
District.create(:name => 'San Borja')
District.create(:name => 'Villa El Salvador')
District.create(:name => 'Santa Anita')
District.create(:name => 'Callao')
District.create(:name => 'Bellavista')
District.create(:name => 'Carmen de la Legua')
District.create(:name => 'La Perla')
District.create(:name => 'La Punta')
District.create(:name => 'Ventanilla')

#Tipos de documento (Doc_type)
Doc_type.delete_all

Doc_type.create(:name => 'TIU')
Doc_type.create(:name => 'DNI')

#Sexo (Sex)
Sex.delete_all

Sex.create(:name => 'Masculino', :name_abv => 'M')
Sex.create(:name => 'Femenino', :name_abv => 'F')

#Tipo de usuario (User_type)
User_type.delete_all

User_type.create(:name => 'Alumno')
User_type.create(:name => 'Externo')