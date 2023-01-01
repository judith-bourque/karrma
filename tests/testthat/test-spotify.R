test_that("Spotify authorization works", {
  expect_success(expect_type(spotifyr::get_spotify_access_token(), "character"))
})
