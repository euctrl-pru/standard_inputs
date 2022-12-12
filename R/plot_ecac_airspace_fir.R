library(pruatlas)
library(purrr)
library(dplyr)
library(here)
library(ggplot2)

ecac <- list(ecac_oceanic(),
             ecac_northwest(),
             ecac_southwest(),
             ecac_southeast(),
             ecac_northeast()
) %>% 
  purrr::map_dfr(.f = bind_rows) %>% 
  sf::st_as_sf() %>%
  sf::st_union() %>%
  sf::st_sf(geometry = .,
            id = "ECAC",
            name = "ECAC",
            icao = "ECAC"
  ) %>% 
  mutate(min_fl = 0, max_fl = 999)
plot_country_fir(icao_id = "ECAC", name = "ECAC", firs = ecac)

dest <- here("figures", "ecac_airspace_fir.png")
ggsave(dest)
