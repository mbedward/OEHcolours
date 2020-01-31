# Colours and fills to indicate RRG experimental site treatments in ggplot graphs
#
RRG_SITE_TREATMENTS <- list(
  title = "Plot treatment",
  labels = c("control", "moderate", "heavy"),

  # Note: these colours must be defined in the OEH_COLOURS vector.
  # See file data_raw/define_OEH_colours.R
  colours = c("black", "earth3", "earth1")
)

usethis::use_data(RRG_SITE_TREATMENTS, overwrite = TRUE)
