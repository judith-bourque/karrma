#' Get QID for artists
#'
#' `r lifecycle::badge('experimental')`
#'
#' For internal purposes.
#'
#' @return Character vector of QID
#' @export
#'
#' @examples
#' get_qid()
get_qid <- function(){
  qid <- c("Q15935", # Kanye West
           "Q26876" # Taylor Swift
           )
  qid
}

#' Get net worth of artists
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param id QID
#'
#' @return Tibble.
#' @export
#'
#' @examples
#' get_net_worth(id = get_qid())
get_net_worth <- function(id){
  value <- NULL # To mute note on check()

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    net_worth = tidywikidatar::tw_get_property(id = id, p = "P2218") %>%
      dplyr::pull(value)
  )
}

#' Get number of awards per artist
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param id Wikidata QID of artist
#'
#' @return Tibble.
#' @export
#'
#' @examples
#' get_awards(id = get_qid())
get_awards <- function(id) {
  awards <- tidywikidatar::tw_get_property(id = id, p = "P166")

  awards_count <- awards %>%
    dplyr::count(id)

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    awards = awards_count$n
  )
}
