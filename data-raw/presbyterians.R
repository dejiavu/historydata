library(readr)
library(dplyr)
pres <- read_csv("data-raw/weber-1927.csv")

presbyterians <- pres %>%
  mutate(denomination = ifelse(denomination == "Reunited Presbyterians",
                               "Presbyterians", denomination))

devtools::use_data(presbyterians, overwrite = TRUE)
