#FUNCIÓN PARA REALIZAR EL CÁLCULO DE IMC, MEDIANTE LA RECEPCIÓN DE DOS PARÁMETROS
def formula_imc(valor1, valor2)
  imc = valor1 / valor2**2
end

#FUNCIÓN CONDICIONAL QUE EVALUE EL INDICE DE LA PERSONA EN FUNCIÓN DEL PARÁMETRO DEL CÁLCULO DEL IMC
def calcular_imc(imc)
  puts("Tu índice de masa corporal es => #{imc}")
  if imc < 18.5
    puts "El índice calculado es bajo de peso"
  elsif imc <= 18.5 || imc <= 24.9
    puts "El índice calculado es normal"
  elsif imc <= 25.0 || imc <= 29.9
    puts "El índice calculado es sobrepeso"
  elsif imc <= 30 || imc <= 34.9
    puts "El índice calculado es Obesidad grado I, Moderado"
  elsif imc <= 35 || imc <= 39.9
    puts "El índice calculado es Obesidad grado II, Severo"  
  else 
    puts "El índice calculado es Obesidad grado III, Muy severo"
  end
end

#SOLICITUD DE LOS DATOS AL USUARIO MEDIANTE GETS, LOS CUALES SERÁN CONVERTIDOS A FLOTANTES PARA OPERACIÓN CON DECIMALES.
puts("***¡Bienvenido/a al sistema de cálculo IMC!***")
puts "Ingresa tu peso en kilogramos"
peso = gets.chomp.to_f

puts "Ingresa tu altura expresada en metros"
altura = gets.chomp.to_f

#MOSTRAREMOS LA INFORMACIÓN CALCULADA ALMACENANDO EN UN VARIABLE resultado. TENDRÁ COMO VALOR EL LLAMADO DE LA FUNCIÓN calcular_imc Y LE PASAREMOS COMO ARGUMENTO LA FUNCIÓN formula_imc.
resultado = calcular_imc(formula_imc(peso, altura))
puts(resultado)

