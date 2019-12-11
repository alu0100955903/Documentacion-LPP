require 'p6/alimento.rb'
require 'p6/lista.rb'
require 'p6/plato.rb'
require 'p6/plato_hijo.rb'

RSpec.describe Plato do
        before :each do
                @a1 = Alimento.new("Potaje",43,21,54,3,4)
                @a2 = Alimento.new("Carne",23,23,54,6,3)
                @a3 = Alimento.new("Helado",434,54,3,5,4)

                @a4 = Alimento.new("Potaje",43,21,54,3,4)
                @a5 = Alimento.new("Carne",23,23,54,6,3)
                @a6 = Alimento.new("Helado",434,54,3,5,4)

                @a7 = Alimento.new("Potaje",43,21,54,3,4)
                @a8 = Alimento.new("Carne",23,23,54,6,3)
                @a9 = Alimento.new("Helado",434,54,3,5,4)

		#Primer plato
                @dieta = List.new(nil,nil)
                @dieta.insertar_por_cola(@a1)
                @dieta.insertar_por_cola(@a2)
                @dieta.insertar_por_cola(@a3)

                @cantidad = List.new(nil,nil)
                @cantidad.insertar_por_cola(25)
                @cantidad.insertar_por_cola(26)
                @cantidad.insertar_por_cola(27)

                @plato = Plato.new("plato1",@dieta,@cantidad)
                @plato_hijo1 = Plato_hijo.new("plato1",@dieta,@cantidad)

		#Segundo plato
                 @dieta2 = List.new(nil,nil)
                 @dieta2.insertar_por_cola(@a4)
                 @dieta2.insertar_por_cola(@a5)
                 @dieta.insertar_por_cola(@a6)
                 @cantidad2 = List.new(nil,nil)
                 @cantidad2.insertar_por_cola(25)
                 @cantidad2.insertar_por_cola(26)
                 @cantidad2.insertar_por_cola(27)

                 @plato2 = Plato.new("plato2",@dieta2,@cantidad2)
                 @plato_hijo2 = Plato_hijo.new("plato2",@dieta2,@cantidad2)

		 #Tercer plato
                  @dieta3 = List.new(nil,nil)
                  @dieta3.insertar_por_cola(@a7)
                  @dieta3.insertar_por_cola(@a8)
                  @dieta3.insertar_por_cola(@a9)

                  @cantidad3 = List.new(nil,nil)
                  @cantidad3.insertar_por_cola(25)
                  @cantidad3.insertar_por_cola(26)
                  @cantidad3.insertar_por_cola(27)

                  @plato3 = Plato.new("plato3",@dieta3,@cantidad3)

        end

        describe "Prueba Huella Nutricional" do
                it "Prueba funcion huella nutricional" do
			expect(@plato.huella_nutricional).to eq(2.0)
                end
		
		it "Calcula plato con máxima huella" do
			expect(@plato_hijo1>@plato_hijo2).to eq(false)

		end

        end
end
