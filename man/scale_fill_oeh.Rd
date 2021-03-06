% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_functions.R
\name{scale_fill_oeh}
\alias{scale_fill_oeh}
\title{Fill scale constructor for drsimonj colors}
\usage{
scale_fill_oeh(palette = "mixed", discrete = TRUE, reverse = FALSE, ...)
}
\arguments{
\item{palette}{Character name of palette in OEH_PALETTES.}

\item{discrete}{Boolean indicating whether the colour aesthetic is discrete or not.}

\item{reverse}{Boolean indicating whether the palette should be reversed.}

\item{...}{Additional arguments passed to ggplot2::discrete_scale() if discrete is TRUE,
or ggplot2::scale_colour_gradientn() if discrete is FALSE.}
}
\description{
Fill scale constructor for drsimonj colors
}
\examples{
\dontrun{
ggplot(data = dat, aes(x = time, y = value)) +
  geom_smooth(aes(colour = subgroup, fill = subgroup),
              method = "loess") +

  scale_colour_oeh(name = "Sub-group", palette = "sun", discrete = TRUE) +
  scale_fill_oeh(name = "Sub-group", palette = "sun", discrete = TRUE)
}

}
