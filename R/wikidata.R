#' Get QID for artists
#'
#' `r lifecycle::badge('experimental')`
#'
#' For internal purposes.
#'
#' @return Character vector of QID
#' @export
#' @keywords internal
#'
#' @examples
#' get_qid()
get_qid <- function(){
  qid <- c("Q15935", # Kanye West
           "Q26876" # Taylor Swift
           )
  qid
}

#' Get information on artists
#'
#' `r lifecycle::badge('experimental')`
#'
#' @param id QID
#'
#' @return Tibble.
#'
#' @examples
#' # Get specific information
#' get_net_worth(id = get_qid())
#' get_awards(id = get_qid())
#' get_nominations(id = get_qid())
#'
#' # Get consolidated information
#' get_bio(id = get_qid())

#' @rdname get_data
#' @export
get_net_worth <- function(id){
  value <- NULL # To mute note on check()

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    net_worth = tidywikidatar::tw_get_property(id = id, p = "P2218") %>%
      dplyr::pull(value)
  )
}

#' @rdname get_data
#' @export
get_awards <- function(id) {
  awards <- tidywikidatar::tw_get_property(id = id, p = "P166")

  awards_count <- awards %>%
    dplyr::count(id)

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    awards = awards_count$n
  )
}

#' @rdname get_data
#' @export
get_nominations <- function(id) {
  nominations <- tidywikidatar::tw_get_property(id = id, p = "P1411")

  nominations_count <- nominations %>%
    dplyr::count(id)

  tibble::tibble(
    label = tidywikidatar::tw_get_label(id = id),
    nominations = nominations_count$n
  )
}

#' @rdname get_data
#' @export
get_bio <- function(id) {
  nominations <- get_nominations(id)
  awards <- get_awards(id)
  net_worth <- get_net_worth(id)

  dplyr::full_join(nominations, awards) %>%
    dplyr::full_join(net_worth)
}

