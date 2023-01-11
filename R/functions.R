#' Print x raised to the power y
#'
#' This function prints x raised to the power y for some reason (it's a test)
#'
#' @param x,y Numbers.
#' @return "invisible" `NULL`.
#' @export
pow <- function(x, y) {
    # function to print x raised to the power y
    result <- x^y
    print(paste(x,"raised to the power", y, "is", result))
    invisible(NULL)
}

#' Print x + y
#'
#' This function prints x + y for some reason (it's a test)
#'
#' @param x,y Numbers.
#' @return "invisible" `NULL`.
#' @export
summ <- function(x, y) {
  # function to print x + y
  result <- x+y
  print(paste(x,"r+", y, "is", result))
  invisible(NULL)
}
