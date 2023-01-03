#' Apply spotify theme to a `gt` table
#'
#' `r lifecycle::badge('experimental')`
#'
#' Based on `gtExtras::gt_theme_dark()`.
#'
#' @param gt_object gt table object
#' @param ... Optional arguments
#' @return gt table
#' @export
#' @examples
#'
#' library("gt")
#'
#' spotify_tb <- head(mtcars) %>%
#'   gt() %>%
#'   theme_spotify() %>%
#'   tab_header(title = "Spotify theme table")
theme_spotify <- function(gt_object, ...) {
  stopifnot("'gt_object' must be a 'gt_tbl'." = "gt_tbl" %in% class(gt_object))

  gt_object %>%
    gt::tab_options(
      heading.align = "left",
      heading.border.bottom.style = "none",
      table.background.color = "#2d2d2d",
      table.font.color.light = "white",
      table.border.top.style = "none",
      table.border.bottom.color = "#2d2d2d",
      table.border.left.color = "#2d2d2d",
      table.border.right.color = "#2d2d2d",
      table_body.border.top.style = "none",
      table_body.border.bottom.color = "#2d2d2d",
      column_labels.border.top.style = "none",
      column_labels.background.color = "#2d2d2d",
      column_labels.border.bottom.width = 3,
      column_labels.border.bottom.color = "#2d2d2d",
      data_row.padding = gt::px(7),
      ...
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        color = "white",
        font = gt::google_font("Source Sans Pro"),
        transform = "uppercase"
      ),
      locations = gt::cells_column_labels(tidyselect::everything())
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        font = gt::google_font("Libre Franklin"),
        weight = 800,
        size = "xx-large"
      ),
      locations = gt::cells_title(groups = "title")
    ) %>%
    gt::tab_style(style = list(
      gt::cell_text(font = gt::google_font("Source Sans Pro"),
                    weight = 400),
      gt::cell_borders(color = "#2d2d2d")
    ),
    locations = gt::cells_body()) %>%
    # Add padding
    gt::opt_horizontal_padding(scale = 3) %>%
    gt::opt_vertical_padding(scale = 1.5) %>%
    gt::opt_table_outline(style = "none", width = gt::px(0))

}
