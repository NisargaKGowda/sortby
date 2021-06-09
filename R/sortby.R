#' creates a function to sort
#' df is the data frame
#' col is the columns
#' @export
#' @param  df is dataframe
#' @param col is columns
#' @param desc order in which data is sorted
sortby <- function(df, col, desc = FALSE) {
  df[order(
    eval(
      str2expression(paste0("df$", col))
    ),
    decreasing = desc
  ),]
}
