#Escriba una expectatiivas y codigo fuente Ruby de orden superior que permita incrementar el facto de coste de los platos usando programacion funcional

describe " incremento del factor de coste " do

factor_coste = 2

result = incremento_coste(@list_platos,factor_coste)
expect(result[0].conjunto_precios[0]).to eq(result[0].conjunto_precios[0]*factor_coste)

expect(result[1].conjunto_precios[1]).to eq(result[1].conjunto_precios[1]*factor_coste)

end

# Ahora realizamos la función de orden superior que permite realizar estás pruebas

def incremento_coste(list_dieta,factor_coste)

	result = list_dieta.map{|plato| plato.conjunto_precios[0]*factor_coste }
#Con el map hacemos una transformación del precio del plato incrementandolo por el factor de coste y obtenemos el conjunto de precios de los platos incrementadoo.
end 

