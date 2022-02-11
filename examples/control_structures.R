library(dplyr)

x <- c(5, 15, NA)

y <- ifelse(x > 10, "Mayor a 10", "No mayor a 10")
y

z <- if_else(x > 10, "Mayor a 10", "No mayor a 10", missing = "Sin información")
z

x <- 115
if (x < 0){
 y <- "x es negativo"
} else if(x == 0){
 y <- "x es igual a cero"
} else if(x > 0 & x <20){
 y <- "x está entre 0 y 20"
} else({
 y <- "x es mayor o igual a 20"
})
y

for(i in seq(1, 10, by = 1)){
  if(i %% 2 == 0) break
 print(paste("Iteración número:", i))
}

nombres <- c("Santiago", "Alfredo", "Araceli", "Arturo", "César", "Danna")

for (nombre in nombres) {
 print(paste("Hola", nombre, "Mucho gusto!"))
}

for (i in seq_along(nombres)) {
 
 print(paste("El alumno", i, "se llama:", nombres[i]))
}

tabla <- tibble(no = 1:6, nombre = NA)
for (i in seq_along(nombres)) {
 tabla[i, "nombre"] <- nombres[i]
}

tabla


vector <- numeric(length = 30)



nrep <- 10  # Número de repeticiones
n <- 100    # Tamaño de la muestra
conteo <- numeric(nrep)  # Vector para almacenar el conteo
for (i in 1:nrep) {
  x <- runif(n=n, min=1, max=3)
  conteo[i] <- sum(x >= 2.5)
}
conteo  # Para obtener el conteo





resultados <- c('Cara', 'Cruz')
sample(x = resultados, size = 10, replace = T, prob = c(0.9, 0.1)) 

num.lanza <- 0     # Contador de lanzamientos
num.caras <- 0     # Contados de caras obtenidas
historial <- NULL  # Vector vacío para almacenar
while (num.caras < 5) {
  res <- sample(x=resultados, size=1)
  num.lanza <- num.lanza + 1
  historial[num.lanza] <- res
  if (res == 'Cara') {
    num.caras <- num.caras + 1
  }
}
historial





















