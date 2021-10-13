## Ejercicio - Clase 1 - UNQ ##

# 1. Consultemos nuestro directorio de trabajo

getwd()

# 2. Establezcamos nuestro directorio. 

# Luego de escribir "C:/", podemos usar el comando TAB y así se nos abre una ventana para ir ubicando nuestra carpeta

setwd("C:/Documents and Settings/emili/Documents/EMILIA/R/UNQ/Clase 1/")

# 3. Objetos en R.

a <- 3 #entero numéricos

b <- a + 1 #enteros

b #chequeamos el valor del objeto b

x <- "Hola mundo" #caracter o cadena de texto

x #chequeamos el valor del objeto x

# 4. Tipos de variables 

class(a) #consultamos el tipo de objeto a
class(b) #consultamos el tipo de objeto b
class(x) #consultamos el tipo de objeto x

# 5. Operadores

# COMPARACION

a == b #consultamos si el valor de "a" es igual a "b"

a > b #consultamos si el valor de "a" es mayor a "b"

a < b #consultamos si el valor de "a" es mayor a "b"

a != b #consultamos si el valor de "a" es diferente a "b"

# TRUE significa que cumple con la condición
# FALSE significa que NO cumple con la condición
# Se pueden comparar todo tipo de objetos

# ARITMÉTICOS

2+2 #Suma

2-2 #Resta

2/2 #División

2*2 #Multiplicación

2^2 #Potencia

# LÓGICOS

# Nos ayudan a evaluar una o más expresiones lógicas, es decir, los datos FALSE y TRUE

marx <- "Clásico de la Sociología" #Creamos un objeto que se llame marx y su valor sea una cadena que diga "Clasico de la Sociología"
weber <- "Clásico de la Sociología"
nacimiento_anio_marx <- 1818 # Creamos un objeto con el año de nacimiento de marx
nacimiento_anio_weber <- 1864

!(marx==weber) #negación de que marx y weber tengan el mismo valor

#Utilicemos el operador comparador y los operadores lógicos
#Lo leemos como: marx es igual a weber Ó el nacimiento de ambos es igual

(marx==weber) | (nacimiento_anio_marx == nacimiento_anio_weber)

#Nos devuelve TRUE porque al menos UNA de las dos condiciones es verdadera

#Utilicemos el operador comparador y los operadores lógic
#Lo leemos como: marx es igual a weber Y el nacimiento de ambos es igual

(marx==weber) & (nacimiento_anio_marx == nacimiento_anio_weber)

#Nos devuelve FALSE porque las dos condiciones NO se cumplen a la vez.

# 6. Funciones

#Las funciones son un instrucciones (acciones) pre definidas, a la que se les asigna un nombre. 
#Aceptan argumentos, es decir, especificaciones sobre cómo deben funcionar. 

sum(a,b) #Funcion para sumar objetos a y b
a <- as.character(a) #Convertimos el objeto "a" en cadena de texto y lo pisamos
class(a) #Consultamos el tipo de objeto "a"

#Creamos un objeto vector (sus elementos son del mismo tipo) con notas de alumnxs

notas_alumnxs <- c(8,7,8,9,8)

mean(notas_alumnxs) #funcion para calcular el promedio de notas de nuestrxs alumnxs

median(notas_alumnxs) #calculemos la mediana, es decir, el valor que corta por la mitad nuestros registros

# 7. Extraccion o subsetting de datos

G <- c("Carlos","Maria","Juan","Victoria") #Creamos un vector con elementos de texto

elementoG1 <- G[3] #Usamos corchetes para extraer el tercer elemento de nuestro vector

elementoG1 # chequeamos

# 8. Exportar objetos de nuestro ambiente a nuestro equipo

save(notas_alumnxs, file="notas_alumnxs.RData") # Guardamos objeto notas_alumnxs
save.image("clase_1.RData") # Guardamos todos los objetos de nuestro ambiente

# 9. Borrar objetos de nuestro ambiente

rm(notas_alumnxs) #funcion para borrar ciertos objetos de nuestro ambiente, en este caso el objeto "notas_alumnxs"
rm(list=setdiff(ls(), "weber")) #funcion para remover todos nuestros objetos EXCEPTO el objeto "weber"
rm(list = ls()) #funcion para remover a todos los objetos

# 10. Importamos objetos de nuestro equipo al ambiente

load("clase_1.RData")

# 11. Pedir ayuda en R con ?funcion

?mean # El output nos devuelve la descripcion de la funcion mean() 

# El # se usa para hacer comentarios que no impactan en el codigo,
# <- se usa para definir el nombre de un objeto (variable o dataframe)
# R reconoce la diferencia entre mayosculas y minusculas
# "" se usa para hacer referencia a valores que son caracteres
# espacios en blanco y enters son para visualizar mejor (no impacta en el codigo),
# [corchetes] y $ son metodos para hacer referencia o extraer elementos de un objeto,
# (parentesis) es para definir parametros de una función,
# las comas se usan para separar los parametros dentro de una funcion
# Con el disquet, podemos guardar el script con los cambios hechos,
# o antes de cerrar la sesión en R, el programa nos consultará si queremos guardar nuestro trabajo