#' A ggplot theme for OEH use.
#'
#' This is a minimal theme with no panel grid lines.
#'
#' @importFrom ggplot2 theme_bw theme element_blank
#'
#' @export
#'
theme_oeh <- function() {
  theme_bw(base_size = 12) %+replace%

    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          strip.background = element_blank()
    )
}
