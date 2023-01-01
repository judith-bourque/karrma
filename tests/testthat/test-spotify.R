test_that("Spotify authorization works", {
  expect_success(expect_type(spotifyr::get_spotify_access_token(), "character"))
})

test_that("Spotify data import works", {
  expect_success(expect_type(get_swift_spotify(), "list"))
  expect_success(expect_type(get_west_spotify(), "list"))
})
