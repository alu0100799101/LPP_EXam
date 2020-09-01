#Desarrollar con RSPEC la Clase Plato que represente un menú dietetico , que tendrá un identificadores, conjunto de alimentos y conjunto de precios

#Metodologia TDD, primero se realizan las pruebas y luego se va modificando o añadiendo codigo fuente para obtener exito en cada prueba


Rspec.decribe Plato do 

	before :all do 

		@receta1 = Plato.new(1111,['Pollo',10,23,7],[2,50,5])

	end
	
	describe "Debe existir un método" do 

		it " Existe el identificador" do
			expect(@receta1.id).to eq(1111)
		end
	
		it " Existe el conjunto de alimentos " do
			expect(@receta1.conjunto_alimentos).to eq(['Paella',10,23,7])
		end

		it " Existe el conjunto precios " do
			expect(@receta1.conjunto_precios).to eq([2.5,3])
		end
	
	end

end 

#Clase Plato para las pruebas 

class Plato

attr_reader :id, :conjunto_alimentos, :conjunto_precios

def initialize(id, conjunto_alimentos, conjunto_precios)

@id = id
@conjunto_alimentos = conjunto_alimentos
@conjunto_precios = conjunto_precios
		

end

end
