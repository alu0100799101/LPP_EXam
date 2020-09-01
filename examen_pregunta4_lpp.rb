# Calcular el valor minimo del precio de venta mediante el uso de programación funcional,función superior  y realizar pruebas unitarias .Teniendo un Conjunto De Platos


class Plato 
#Necesitamos el modulo comparable para comparar los conjuntos de precios y obtener el valor minimo de venta. 

include Comparable

attr_reader :id, :conjunto_alimentos, :conjunto_precios

	def initialize(id, conjunto_alimentos, : conjunto_precios)

		@id = id

		@conjunto_alimentos = conjunto_alimentos

		@conjunto_precios = conjunto_precios

	end 

	def <=> (other)
	
		conjunto_precios[1] <=> other.conjunto_precios[1]
	end
end

#Para la prueba unitaria se debe colocar en una carpeta diferente al codigo fuente , normalmente llamada /test, y con un nombre de archivo tc_plato.rb,para poder encontrar el minimo precio de venta de una lista de platos.

class TestDatos < Test::Unit::TestCase

def setup
	@plato1 = Plato.new(1111,['Paella',10,23,7],[2.5,5])
	@plato2 = Plato.new(1111.['Helado',30,24,10],[1.25,2.5])
	@list_platos = [plato1,plato2]
end

def test_simple
	minimo = (@lista_platos.min).conjunto_precios[1])

	assert_equal(2.5,minimo)
end

end


