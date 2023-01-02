library(dplyr)
library(tidyr)
library(stringr)

iris %>% 
  rowwise() %>% 
  mutate(suma = sum(across(Sepal.Length:Species))) %>% 
  ungroup()



iris %>%
  mutate(Suma=Sepal.Length+Sepal.Width) %>%
  group_by(Species) %>%
  summarise(Media_Suma=mean(Suma), .groups = "drop")



conjuntoX <- data.frame("Llave" = LETTERS[1:8], 
                        "C1" = 1:8) %>% 
 mutate(Nombre = paste0("000", Llave))
                        

conjuntoY <- data.frame("Key" = sample(LETTERS[11:3], size = 9, replace = T), 
                        "Ex1" = letters[2:10], 
                        "Ex2" = 1002:1010) %>% 
 mutate(Name = paste0("000",Key))

conjuntoX
conjuntoY

c("Llave" = "Key")
calif <-c("cat1" = 9, "cat2" = 10, "cat1" = 7.1, "cat2" = 15)

left_join(x = conjuntoX, y = conjuntoY, by = c("Llave" = "Key", "Nombre" = "Name"))

conjuntoX %>% 
left_join(y = conjuntoY, by = c("Llave" = "Key", "Nombre" = "Name"))

conjuntoY %>% 
left_join(x = conjuntoX, y = ., by = c("Llave" = "Key", "Nombre" = "Name"))





Resumen <- readRDS("data/loc_mun_cdmx.rds")

Resumen  %>% pivot_wider(
  names_from = Ambito, 
  values_from =  Total_localidades
  )


fish_encounters




warpbreaks <- as_tibble(warpbreaks[c("wool", "tension", "breaks")])
warpbreaks

warpbreaks %>% 
 group_by(tension, wool) %>% 
 summarise(breaks = mean(breaks), .groups = "drop") %>% 
 ungroup() %>% 
 pivot_wider(
  names_from = wool, 
  values_from = breaks
  )

warpbreaks %>% 
 pivot_wider(
  names_from = wool, 
  values_from = breaks,
  values_fn = median
  )



billboard
billboard %>%
 pivot_longer(
   cols = starts_with("wk"),
   names_to = "week",
   names_prefix = "wk",
   values_to = "rank",
   values_drop_na = T
 )


Cadena3 <- 'Se pueden implementar "comillas" dentro de la cadena'
print(Cadena3)
Cadena3


for (i in seq_along(sentences[1:100])) {
 #dhsh
 #dhsh
 #eheh
 #ahaehr
 #aehaeh
 #warhgaer111
 cat(paste0("Porcentaje de avance: ",round(i/100*100,1), "% \t"))
}

str_c("09","006") %>% 
str_c("Valores", ., "anidados también se pueden concatenar",sep=" ")




lm(Sepal.Length ~ Sepal.Width + 
    Petal.Length + 
    Petal.Width + 
    Species, data = iris)

"Sepal.Length ~ " %>% 
 str_c(str_c(names(iris)[-1], collapse = " + ")) %>% 
 as.formula()




x <- "00000090060002"
str_sub(x, start = str_length(x)-8, end =str_length(x))
str_sub(x, start =-9, end =str_length(x))
str_sub(x, start =-9)




x <- "00000090060002"
print(x)

(x <- "00000090060002")



vector <- c("nulo éxito", "poco éxito","éxito moderado","éxito", "éxito total")
str_view(vector,"^éxito$", match = T)


str_view(c("tamaño","tasa","tata","taza","tapa"),"ta[([sz]|m)]a", match = T)
str_view(c("tamaño","tasa","tata","taza","tapa"),"ta[szm][aei]", match = T)
str_view(c("tamaño","tasa","tata","taza","tapa"),"ta[^sz]a", match = T)





vector <- c("nulo éxito", "poco éxito","éxito moderado","éxito", "éxito total")
vector


str_view(vector, ".*[eé]xito$", match = F)


x <- "1888 es el año más largo en números romanos: MDCCCLXXXVIII"
str_view(x,"X{2}")

fruit
str_detect(fruit, "[au]")
fruit[str_detect(fruit, "[au]", negate = T)]




iris %>% 
 filter(Species == str_subset(Species, pattern = "o"))


str_count(fruit, "[aeiou]")



tabla <- tibble(
 "Vocal" = c("a","e","i","o","u"),
 "Conteos" = c(sum(str_count(fruit, "a")),sum(str_count(fruit, "e")),
                                  sum(str_count(fruit, "i")),sum(str_count(fruit, "o")),
                                  sum(str_count(fruit, "u"))))


tabla %>% mutate(Porcentaje = Conteos/sum(Conteos))



sentences
words
fruit



x <- "1888 es el año más largo en números romanos: MDCCCLXXXVIII"
str_view_all(x, "M?")
 












