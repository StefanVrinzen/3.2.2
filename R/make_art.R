install.packages("devtools", repos = "http://cran.us.r-project.org")
library(devtools)
install_github("djnavarro/jasmines")
library(jasmines)
library(dplyr)

make_art <- function(AmountRings, SizeOfRings){
  scene_discs(rings = AmountRings, points = 50000,  size = SizeOfRings) %>%
    mutate(ind = 1:n()) %>%
    unfold_tempest(
      iterations = 5,
      scale = .01
    ) %>%
    style_ribbon(
      color = "#FFFFFF",
      colour = "ind",
      alpha = c(1,1),
      background = "#000000"
    )
  }
make_art(30,5)
