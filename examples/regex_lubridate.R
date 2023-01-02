


dig <- c("cdmx09Iztacalco006Izt0001", "bcs03ensenada003loc0001")
"cdmx09Iztacalco006Izt0001"
"cdmx09Iztacalco006Izt0001"
"cdmx09Iztacalco006Izt0001"

a-zA-Z
\\d
library(stringr)
library(dplyr)
library(tidyr)


x <- "1888 es el año más largo en números romanos: MDCCCLXXXVIII"

str_view_all(x, "M?")
str_view_all(x, "e")


str_extract(dig, "\\d+")
str_extract_all(dig, "\\d+", simplify = F) %>% 
 as_tibble() %>% 
 unite(cve_geo, V1:V3, sep = "@" )



datos
names(datos) <- c("n1", "n2", "nn")



iris <- as_tibble(iris) # so it prints a little nicer
rename(iris, petal_length = Petal.Length)

rename_with(iris, toupper)
rename_with(iris, toupper, starts_with("Petal"))
#rename_with(iris, ~ tolower(gsub(".", "_", .x, fixed = TRUE)))
rename_with(iris, ~tolower(str_replace(.x,"\\.", "_")))



mi_funcion <- function(x){
 tolower(str_replace_all(x, "\\.", "_"))
}

mutate(datos, fecha = as_date(fecha))


tiempo <- make_datetime(year = 2004, month = 9, day = 25, hour = 11, min = 30, sec = 1)
tiempo

lubridate::year(tiempo)

lubridate::month(tiempo, label = T, abbr = T)


as.numeric(as_date("1991/11/15") - as_date("1992/04/23"))
as.numeric(-1*(as_date("1991/11/15") - as_date("1992/04/23")))

fechas <- c(as_date("1991/11/15"), as_date("1992/04/23"))
min(fechas)




lng = -99.4146165
lat = 19.412548




















