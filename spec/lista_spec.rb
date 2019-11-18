require 'p6/alimento.rb'
require 'p6/lista.rb'

RSpec.describe Alimento do
	before :each do
		@nodo1 = Node.new(1,nil,nil)
		@nodo2 = Node.new(2,nil,nil)
		@lista = List.new(nil,nil)
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
end
