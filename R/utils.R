#' Check if a colour is valid
#'
#' @param x Colour string
#'
#' @return boolean for successful conversion or not
#'
#' @examples
#' dummyimage:::verifier("white")
#' dummyimage:::verifier("///")
verifier <- function(x) {
  tryCatch(
    is.numeric(col2rgb(x)),
    error = function(e)
      FALSE
  )
}
