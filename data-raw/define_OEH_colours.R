# Vector of the basic OEH colours
#
OEH_COLOURS <- c(
  `sun1`   = "#F04C3E",
  `sun2`   = "#FAA21B",
  `sun3`   = "#FFD331",

  `earth1` = "#4C6D41",
  `earth2` = "#658B43",
  `earth3` = "#ACB137",

  `sea1`   = "#00718F",
  `sea2`   = "#00B8A5",
  `sea3`   = "#4FC6E0",

  `neutral1` = "#231F20",
  `neutral2` = "#4D4D4F",
  `neutral3` = "#77787B",

  `black`  = "#000000",
  `black1` = "#000000"
)

devtools::use_data(OEH_COLOURS, overwrite = TRUE)


# Colour palettes
OEH_PALETTES <- list(
  `mixed`  = oeh_colours("sun1", "sea1", "earth1"),

  `sun`   = oeh_colours("sun1", "sun2", "sun3"),

  `earth` = oeh_colours("earth1", "earth2", "earth3"),

  `sea` = oeh_colours("sea1", "sea2", "sea3"),

  `neutral` = oeh_colours("neutral1", "neutral2", "neutral3")
)

devtools::use_data(OEH_PALETTES, overwrite = TRUE)

