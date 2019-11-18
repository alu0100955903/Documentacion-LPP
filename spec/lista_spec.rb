require 'p6/alimento.rb'
require 'p6/lista.rb'

RSpec.describe Alimento do
	before :each do
		@nodo1 = Node.new(1,NIL,NIL)
		@nodo2 = Node.new(2,NIL,NIL)
		@lista = List.new(NIL,NIL)
	end

	describe "Pruebas de lista" do

		it "Inserta nodo por cola bien" do
			@lista.inserta_por_cola(1)
			expect(@lista.tail.value).to eq(1)
		end


		it "Extrae nodo por cola bien" do
			@lista.inserta_por_cola(1)
			@lista.inserta_por_ccola(2)
			@lista.extraer_por_cola
			expect(@lista.tail.value).to eq(2)
		end


		it "Inserta nodo por cabeza bien" do
			@lista.inserta_por_cabeza(1)
			expect(@lista.head.value).to eq(1)
		end


		it "Extrae nodo por cabeza bien" do
			@lista.inserta_por_cola(1)
			@lista.inserta_por_cola(2)
			@lista.extraer_por_cabeza
			expect(@lista.head.value).to eq(2)
		end

		it "Correcto: comprueba si está vacia" do
			@lista.inserta_por_cola(2)
			@lista.extraer_por_cola
			expect(@lista.vacio).to be(true)
		end
	end
end
