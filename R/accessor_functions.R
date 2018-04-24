#' Function to retrieve OEH colours as hex codes
#'
#' @param ... One or more OEH colour names. Valid names are "sun",
#'   "earth" or "sea", each followed by a digit 1 to 3 (e.g. "earth2").
#'   If the digit is omitted, 1 is assumed. If NULL or not specified,
#'   all colours are returned.
#'
#' @return vector of hex codes
#'
#' @importFrom stringr str_extract str_trim
#'
#' @export
#'
oeh_colours <- function(...) {
  clrs <- c(...)

  if (is.null(clrs)) {
    # return all colours
    OEH_COLOURS
  }
  else {
    clrs <- str_trim(tolower(clrs))

    # Check that requested colours are valid
    names <- str_extract(clrs, "^[a-z]+")
    flag <- names %in% c("sun", "earth", "sea")
    if (!all(flag)) stop("Unknown colour: ", clrs[!flag])

    # Check for trailing digits
    digits <- as.integer(str_extract(clrs, "\\d+$"))
    ii <- is.na(digits)
    digits[ii] <- 1
    clrs[ii] <- paste0(clrs[ii], 1)

    flag <- digits %in% 1:3
    if (!all(flag)) stop("Invalid colour numbers (should be 1-3): ", names[!flag])

    OEH_COLOURS[clrs]
  }
}


#' Returns a function to interpolate an OEH colour palette
#'
#' @param palette Character name of palette in OEH_PALETTES. One of "mixed", "sun",
#'   "earth", "sea".
#'
#' @param reverse Boolean indicating whether the palette should be reversed.
#'
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
#'
oeh_palette <- function(palette = "mixed", reverse = FALSE, ...) {
  pal <- OEH_PALETTES[[palette]]
  if (is.null(pal)) stop("Invalid palette name: ", palette)

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
