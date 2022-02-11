library(dplyr)
library(readxl)
library(readr)
library(jsonlite)


ames_delim <- read_delim(file = "data/ames.csv", delim = ",")
ames_csv <- read_csv(file = "data/ames.csv", na = c("", "NA", "na", "#N/A", 80:150))
ames_xlsx <- read_xlsx(path = "data/ames.xlsx", sheet = 1, skip = 3)


fromJSON()

fromJSON()

base_json <- jsonlite::fromJSON("data/ames.json")
head(base_json, 2)


ames_csv %>% select(Lot_Area, Lot_Shape, Price)
select(ames_csv, any_of(c("Lot_Area", "Lot_Shape", "Price")))


vars <- c("Sepal.Length", "Sepal.Width")
iris %>% as_tibble() %>% select(-any_of(vars))

iris %>% 
 as_tibble() %>% 
 filter(Sepal.Length>5 | Sepal.Width>=3.5) %>% 
 select(contains("Sepal"), Species) %>% 
 filter(Species %in% c("versicolor", "virginica")) %>% 
 arrange(Species, desc(Sepal.Length), Sepal.Width) %>% 
 mutate(
  Suma = Sepal.Length + Sepal.Width,
  Resta = Sepal.Length - Sepal.Width,
  Ratio = Sepal.Length / Sepal.Width
  ) %>% 
 mutate(Ratio = 1/Ratio) %>% 
 relocate(Species, .before = Sepal.Length) %>% 
 mutate(range_length = if_else(Sepal.Length > 6.32, "Grande", "Chico")) %>% 
 group_by(Species) %>% 
 #mutate(n_elemts = n()) %>% 
 #ungroup() %>% 
 summarise(
  sepal_mean_length = mean(Sepal.Length),
  sepal_sd_length = sd(Sepal.Length),
  sepal_min_length = min(Sepal.Length),
  sepal_max_length = max(Sepal.Length),
  categories = n_distinct(Species),
  .groups = "drop"
 )




head(ejemplo_filter,5)


h(g(f(x)))


select(filter(as_tibble(iris), Sepal.Length>5, Sepal.Width>=3.5),contains("Sepal"), Species)



















