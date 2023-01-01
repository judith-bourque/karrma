#' Get Wikipedia pageviews
#'
#' @inheritParams pageviews::article_pageviews
#'
#' @return data.frame
#' @export
#'
#' @examples
#' data <- get_pageviews_raw()
get_pageviews_raw <- function(project = "en.wikipedia",
           article = c("Taylor Swift", "Kanye West"),
           platform = "all",
           user_type = "all",
           start = get_last_month(),
           end = NULL,
           reformat = TRUE,
           granularity = "daily") {
    pageviews::article_pageviews(
      project = project,
      article = article,
      platform = platform,
      user_type = user_type,
      start = start,
      end = end,
      reformat = reformat,
      granularity = granularity
    )
  }

#' Get first day of last month for pageviews functions
#'
#' @return a character vector containing timestamps that can be used with pageviews package.
#' @export
#'
#' @examples
#' get_last_month()
get_last_month <- function(){
  pageviews::pageview_timestamps(timestamps = lubridate::floor_date(Sys.Date() - months(1), "month"))
}
