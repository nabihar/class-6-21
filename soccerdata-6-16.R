library(tidyverse)
library(rvest)
library(httr)

data <- read_html("https://en.wikipedia.org/wiki/UEFA_Euro_2020_squads")

data2 <- data %>% 
html_elements("td:nth-child(4)") %>% 
html_text2() %>% 
as_tibble()

write_csv(data2, "bdays.csv")
