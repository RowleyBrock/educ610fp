dist_bound <- sf::read_sf(files[5]) %>%
  clean_names()

dist_bound %>%
  select("statefp", "unsdlea", "geoid", "name") %>%
  filter(statefp == 41) %>%
  write_sf(here::here("data", "or-dist-bound.shp"))
