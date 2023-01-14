#' Get QID for artists
#'
#' For internal purposes.
#'
#' @return Character vector of QID
#' @export
#'
#' @examples
#' get_qid()
get_qid <- function(){
  qid <- c("Q26876", # Taylor Swift
           "Q15935" # Kanye West
           )
  qid
}

#' Get statistics for artists
#'
#' @param id QID
#' @param language Wikipedia project language
#'
#' @return Tibble.
#' @export
#'
#' @examples
#' get_stats(id = get_qid())
get_stats <- function(id, language = "en"){
  value <- NULL # To mute note on check()

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    net_worth = tidywikidatar::tw_get_property(id = id, p = "P2218") %>%
      dplyr::pull(value)
  )
}
