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

#' Create long data frame
#'
#' This function takes data presented in Binomial (successes, trials) format and converts to Bernoulli (0,1) format
#'
#' @param df Dataframe
#' @param Successes,Trials  Columns
#' @return "invisible" `NULL`.
#' @export
bin_bern <- function(df,Successes, Trials) {
  df %>% mutate(binary = map2({{Successes}}, {{Trials}}, ~ c(rep(1, .x), rep(0, .y - .x)))) %>% unnest(cols = c(binary))
  invisible(NULL)
}
