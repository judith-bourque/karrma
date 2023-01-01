#' Get Spotify data for Taylor Swift
#'
#' @return List object.
#' @export
#'
#' @examples
#' data <- get_swift_spotify()
get_swift_spotify <- function() {
  spotifyr::get_artist("06HL4z0CvFAxyc27GXpf02?si=_y8VtBWVQ-uiuaOF5tJphw", authorization = spotifyr::get_spotify_access_token())
}
