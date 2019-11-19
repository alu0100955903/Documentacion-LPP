require 'p6/alimento.rb'
require 'p6/lista.rb'

RSpec.describe Alimento do
	before :each do

		@nodo1 = Node.new(1,nil,nil)
		@nodo2 = Node.new(2,nil,nil)
		@lista = List.new(nil,nil)

		#Alimentos dieta espanola
		@a1 = Alimento.new("sopa" ,20,40,40,24,5)
		@a2 = Alimento.new("carne",15,35,50,31,5)
		@a3 = Alimento.new("yogur",25,45,30,56,5)
		
		#Alimentos dieta vasca
		@a4 = Alimento.new("potaje"  ,20,65,15,65,5)
		@a5 = Alimento.new("pescado" ,15,60,25,34,5)
		@a6 = Alimento.new("natillas",10,55,35,13,5)

		#Alimentos dieta vegetaria
		@a7 = Alimento.new("gazpacho",20,40,40,34,5)
		@a8 = Alimento.new("huevos"  ,15,35,50,32,5)
		@a9 = Alimento.new("batido"  ,25,45,30,21,5)

		#Alimentos dieta vegetaliana
		@a10= Alimento.new("potaje"  ,15,35,50,12,5)
		@a11= Alimento.new("ensalada",20,40,40,32,5)
		@a12= Alimento.new("fruta"   ,25,45,30,21,5)

		#Alimentos dieta animal
		@a13= Alimento.new("cocido",30,30,40,54,5)
		@a14= Alimento.new("filete",30,20,50,65,5)
		@a15= Alimento.new("batido",30,60,20,21,5)


		#Dietas
		@dieta_espanola    = List.new(nil,nil)
		@dieta_vasca       = List.new(nil,nil)
		@dieta_vegetaria   = List.new(nil,nil)
		@dieta_vegetaliana = List.new(nil,nil)
		@dieta_animal      = List.new(nil,nil)

	end

	describe "Pruebas de lista" do
	
		it "Inserta nodo por cola bien" do
			@lista.insertar_por_cola(1)
			expect(@lista.tail.value).to eq(1)
		end

		it "Extrae nodo por cabeza bien" do
			@lista.insertar_por_cola(1)
			@lista.insertar_por_cola(2)
			@lista.extraer_por_cabeza
			expect(@lista.head.value).to eq(2)
		end

		it "Inserta nodo por cabeza bien" do
			@lista.insertar_por_cabeza(1)
			expect(@lista.head.value).to eq(1)
		end

		it "Extrae nodo por cola bien" do
			@lista.insertar_por_cola(1)
			@lista.insertar_por_cola(2)
			@lista.extraer_por_cola
			expect(@lista.head.value).to eq(1)
		end

		it "Correcto: comprueba si está vacia" do
                        @lista.insertar_por_cola(2)
                        @lista.extraer_por_cola
			expect(@lista.vacio).to be(true)
		end

		it "Correcto: se imprime bien" do
                        @lista.insertar_por_cola(1)
                        @lista.insertar_por_cola(2)
			@lista.insertar_por_cola(3)
			expect(@lista.to_s)=="[1][2][3]"
		end
	end

	describe "Pruebas menu" do

		it "Gases diarios" do

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

			expect(@dieta_espanola.gases).to eq(111)
			expect(@dieta_vasca.gases).to eq(112)
			expect(@dieta_vegetaria.gases).to eq(87)
			expect(@dieta_vegetaliana.gases).to eq(65)
			expect(@dieta_animal.gases).to eq(140)
		end

		
		it "Gases anuales" do

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

			expect(@dieta_espanola.gases*365).to eq(40515)
			expect(@dieta_vasca.gases*365).to eq(40880)
			expect(@dieta_vegetaria.gases*365).to eq(31755)
			expect(@dieta_vegetaliana.gases*365).to eq(23725)
			expect(@dieta_animal.gases*365).to eq(51100)
		end
	end
end
