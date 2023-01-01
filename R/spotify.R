#' Get Spotify data for Taylor Swift and Kanye West
#'
#' @return List object.
#'
#' @examples
#' data <- get_swift_spotify()
#' data <- get_west_spotify()
#'

#' @export
#' @rdname get_spotify
get_swift_spotify <- function() {
  spotifyr::get_artist("06HL4z0CvFAxyc27GXpf02?si=_y8VtBWVQ-uiuaOF5tJphw", authorization = spotifyr::get_spotify_access_token())
}
#' @export
#' @rdname get_spotify
get_west_spotify <- function() {
  spotifyr::get_artist("5K4W6rqBFWDnAN6FQUkS6x?si=1porkVNwRaeBFt-Q0WGHQw", authorization = spotifyr::get_spotify_access_token())
}
