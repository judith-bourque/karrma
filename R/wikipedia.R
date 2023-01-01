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
           user_type = "user",
           start = "2022120100",
           end = NULL,
           reformat = TRUE,
           granularity = "monthly") {
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
