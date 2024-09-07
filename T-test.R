#--------------------
# Base de datos ficticia
#--------------------

set.seed(123)  

datos <- data.frame(
  Id = 1:100,
  Precio_vivienda_antes = rnorm(100, mean = 150000, sd = 20000),  
  Precio_vivienda_despues = rnorm(100, mean = 155000, sd = 20000)
)

#--------------------
# Diferencias significativas con T-test
#--------------------

# T-test
t_test <- t.test(datos$Precio_vivienda_antes, datos$Precio_vivienda_despues, paired = TRUE)
t_test

# Si el p-valor es mayor que 0.05 no hay evidencia de una diferencia significativa
# No se puede rechazar la H0 de que la media de las diferencias es igual a cero.
# En otras palabras, no se ha encontrado evidencia suficiente para afirmar que 
# el programa ha tenido un efecto significativo en los precios de las viviendas.
