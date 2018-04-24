#' Colour scale constructor for OEH colours
#'
#' @param palette Character name of palette in OEH_PALETTES.
#'
#' @param discrete Boolean indicating whether the colour aesthetic is discrete or not.
#'
#' @param reverse Boolean indicating whether the palette should be reversed.
#'
#' @param ... Additional arguments passed to ggplot2::discrete_scale() if discrete is TRUE,
#'   or ggplot2::scale_colour_gradientn() if discrete is FALSE.
#'
#' @examples
#' \dontrun{
#' ggplot(data = dat, aes(x = group, y = value)) +
#'   geom_point(aes(colour = subgroup)) +
#'   scale_colour_oeh(name = "Sub-group", palette = "sun", discrete = TRUE)
#' }
#'
#' @importFrom ggplot2 discrete_scale scale_colour_gradientn
#'
#' @export
#'
scale_colour_oeh <- function(palette = "mixed", discrete = TRUE, reverse = FALSE, ...) {
  pal <- oeh_palette(palette = palette, reverse = reverse)
  if (is.null(pal)) stop("Invalid palette name: ", palette)

  if (discrete) {
    discrete_scale("colour", paste0("OEH_", palette), palette = pal, ...)
  } else {
    scale_colour_gradientn(colours = pal(256), ...)
  }
}


#' Fill scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in OEH_PALETTES.
#'
#' @param discrete Boolean indicating whether the colour aesthetic is discrete or not.
#'
#' @param reverse Boolean indicating whether the palette should be reversed.
#'
#' @param ... Additional arguments passed to ggplot2::discrete_scale() if discrete is TRUE,
#'   or ggplot2::scale_colour_gradientn() if discrete is FALSE.
#'
#' @examples
#' \dontrun{
#' ggplot(data = dat, aes(x = time, y = value)) +
#'   geom_smooth(aes(colour = subgroup, fill = subgroup),
#'               method = "loess") +
#'
#'   scale_colour_oeh(name = "Sub-group", palette = "sun", discrete = TRUE) +
#'   scale_fill_oeh(name = "Sub-group", palette = "sun", discrete = TRUE)
#' }
#'
#' @importFrom ggplot2 discrete_scale scale_colour_gradientn
#'
#' @export
#'
scale_fill_oeh <- function(palette = "mixed", discrete = TRUE, reverse = FALSE, ...) {
  pal <- oeh_palette(palette = palette, reverse = reverse)
  if (is.null(pal)) stop("Invalid palette name: ", palette)

  if (discrete) {
    discrete_scale("fill", paste0("OEH_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
