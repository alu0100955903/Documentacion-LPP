require 'p6/alimento.rb'
require 'p6/lista.rb'
require 'p6/plato.rb'

RSpec.describe Plato do
                before :each do
                        #Alimento dieta espanola
                        @a1 = Alimento.new("sopa" ,20,40,40,24,20)
                        @a2 = Alimento.new("carne",15,35,50,31,37)
                        @a3 = Alimento.new("yogur",25,45,30,56,12)

                        #Alimento dietra vvasca
                        @a4 = Alimento.new("potaje"  ,20,65,15,65,42)
                        @a5 = Alimento.new("pescado" ,15,60,25,34,81)
                        @a6 = Alimento.new("natillas",10,55,35,13,63)

                        #Alimento dieta vegetaria
                        @a7 = Alimento.new("gazpacho",20,40,40,34,10)
                        @a8 = Alimento.new("huevos"  ,15,35,50,32,29)
                        @a9 = Alimento.new("batido"  ,25,45,30,21,14)

                        #Alimento dieta vegetaliana
                        @a10= Alimento.new("potaje"  ,15,35,50,12,31)
                        @a11= Alimento.new("ensalada",20,40,40,32,15)
                        @a12= Alimento.new("fruta"   ,25,45,30,21,20)

                        #Alimento dieta animal
                        @a13= Alimento.new("cocido",30,30,40,54,52)
                        @a14= Alimento.new("filete",30,20,50,65,77)
                        @a15= Alimento.new("batido",30,60,20,21,61)

                        #Dietas
                        @dieta_espanola    = List.new(nil,nil)
                        @dieta_vasca       = List.new(nil,nil)
                        @dieta_vegetaria   = List.new(nil,nil)
                        @dieta_vegetaliana = List.new(nil,nil)
                        @dieta_animal      = List.new(nil,nil)

                        @dieta_espanola.insertar_por_cola(@a1)
                        @dieta_espanola.insertar_por_cola(@a2)
                        @dieta_espanola.insertar_por_cola(@a3)

                        @dieta_vasca.insertar_por_cola(@a4)
                        @dieta_vasca.insertar_por_cola(@a5)
                        @dieta_vasca.insertar_por_cola(@a6)

                        @dieta_vegetaria.insertar_por_cola(@a7)
                        @dieta_vegetaria.insertar_por_cola(@a8)
                        @dieta_vegetaria.insertar_por_cola(@a9)

                        @dieta_vegetaliana.insertar_por_cola(@a10)
                        @dieta_vegetaliana.insertar_por_cola(@a11)
                        @dieta_vegetaliana.insertar_por_cola(@a12)

                        @dieta_animal.insertar_por_cola(@a13)
                        @dieta_animal.insertar_por_cola(@a14)
                        @dieta_animal.insertar_por_cola(@a15)

                        @cantidad_espanola = List.new(nil,nil)
                        @cantidad_vasca = List.new(nil,nil)
                        @cantidad_vegetaria = List.new(nil,nil)
                        @cantidad_vegetaliana = List.new(nil,nil)
                        @cantidad_animal = List.new(nil,nil)

                        @cantidad_espanola.insertar_por_cola(25)
                        @cantidad_espanola.insertar_por_cola(25)
                        @cantidad_espanola.insertar_por_cola(25)

                        @cantidad_vasca.insertar_por_cola(20)
                        @cantidad_vasca.insertar_por_cola(20)
                        @cantidad_vasca.insertar_por_cola(20)

                        @cantidad_vegetaria.insertar_por_cola(30)
                        @cantidad_vegetaria.insertar_por_cola(30)
                        @cantidad_vegetaria.insertar_por_cola(30)

                        @cantidad_vegetaliana.insertar_por_cola(40)
                        @cantidad_vegetaliana.insertar_por_cola(40)
                        @cantidad_vegetaliana.insertar_por_cola(40)

                        @cantidad_animal.insertar_por_cola(25)
                        @cantidad_animal.insertar_por_cola(25)
                        @cantidad_animal.insertar_por_cola(25)

                        @plato_espanol     = Plato.new("espanolito"   ,@dieta_espanola, @cantidad_espanola)
                        @plato_vasca       = Plato.new("vasquito"     ,@dieta_vasca, @cantidad_vasca)
                        @plato_vegetaria   = Plato.new("vegetariana"  ,@dieta_vegetaria, @cantidad_vegetaria)
                        @plato_vegetaliana = Plato.new("vegetalianita",@dieta_vegetaliana, @cantidad_vegetaliana)
                        @plato_animal      = Plato.new("animalito"    ,@dieta_animal, @cantidad_animal)
                end

                describe "Prueba Plato" do

                          it "Plato tiene Nombre" do
				  expect(@plato_espanol.nombre).to eq ("espanolito")
                          end

			  it "Plato tiene alimentos" do
				  expect(@plato_espanol.alimentos).to eq(@dieta_espanola)
			  end

			  it "Plato tiene cantidades" do
				  expect(@plato_espanol.cantidades).to eq(@cantidad_espanola)
			  end

			  it "Plato calcula porcentaje de proteinas" do
				  expect(@plato_espanol.por_proteinas).to eq(20)
			  end
			
			  it "Plato calcula porcentaje de lipidos" do
				  expect(@plato_espanol.por_lipidos).to eq(40)
			  end
			  

                end
end

