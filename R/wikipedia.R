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
           start = "2015100100",
           end = "2022120100",
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

#' Visualize Wikipedia pageviews for Taylor Swift and Kanye West
#'
#' @return ggplot
#' @export
#'
#' @examples
#' visualize_pageviews()
visualize_pageviews <- function() {
  article <- views <- NULL # Setting the variables to NULL first

  data <- get_pageviews_raw()

  ggplot2::ggplot(data, ggplot2::aes(x = article, y = views)) +
    ggplot2::geom_col() +
    ggplot2::labs(
      title = "Wikipedia Pageviews"
    ) +
    ggplot2::ylab("") +
    ggplot2::scale_y_continuous(labels = scales::comma) +
    ggplot2::theme_minimal()
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

