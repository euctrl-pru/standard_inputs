library(eurostat)
library(tidyr)
library(lubridate)
library(readr)

get_eurostat('prc_hicp_aind') %>% 
  filter(geo == "EU", coicop == "CP00") %>% 
  mutate(year = year(time), values = values / 100) %>% 
  select(unit, year, values) %>% 
  pivot_wider(names_from = unit, values_from = values) %>% 
  rename(index = INX_A_AVG, rate = RCH_A_AVG) %>% 
  write_csv("data/inflation.csv")
