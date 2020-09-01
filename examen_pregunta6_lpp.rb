# Lenguaje DSL para representar un Plato


class Plato_DSL

attr_reader :id , :conjunto_alimentos, :conjunto_precios

	def initialize( id,&block)
			@id = id
			@conjunto_alimentos = []
			@conjunto_precios = []
			#Usamos el metodo block_given para comprobar que se le ha pasado un bloque y que esta disponible para su uso
			if block_given?
				
				if block.arity == 1
					yield self # Obtengo acceso al objeto actual y por lo tanto permite pasar el argumento al bloque con yield solo no se pasa 
				else
					instance_eval(&block)
				end


			end
	end

	def to_s

		s= " id plato :#{@id}"
		s << " Conjunto del plato -> #{@conjunto_alimentos.join(',')}\n"
		s << " Conjunto de Precios -> #{conjunto_precios.join(',')}\n"

		return s
	end

	def alimento(nombre,nutrientes={})
	
		alimento = { :Alimento => nombre, :proteinas => nutrientes[:proteinas],:grasa => nutrientes[:grasa],:hidratos => nutrientes[:hidratos] }
		@conjunto_alimentos << alimento

	end

	def precio(prec = {})# Creamos un hash donde insertamos el precio de coste y de venta

		@conjunto_precios[0] = prec[:coste]
		@conjunto_precios[1] = prec[:venta]
	end
end

paella = Plato_DSL.new(1111) do
alimento "Arroz", :p => 7, :g => 3 ,:h => 25
alimento "Caldo", :p => 2, :g=>6, :h => 6
alimento "Verduras",:p => 7, :g => 3, :h => 10
precio :coste => 2.5, :venta => 5

end

puts paella #Utilizado comprobar que el DSL funciona.


