#' Visualize Spotify data for Taylor Swift and Kanye West
#'
#' `r lifecycle::badge('experimental')`
#'
#' @return gt table
#' @export
visualize_spotify <- function() {
  # Setting the variables to NULL first
  . <- NULL
  everything <- NULL
  followers <- NULL
  like <- NULL
  popularity <- NULL

  data <- get_spotify()

  data$like <- "heart"

  gt::gt(data) %>%
    gt::tab_header(.,
                   title = "Taylor Swift and Kanye West on Spotify") %>%
    # Relabel columns
    gt::cols_label(
      like = ""
    ) %>%
    # gt::tab_footnote(footnote = "Nov. 14 to 21, 2022.",
    #              locations = gt::cells_column_labels(columns = views)) %>%
    # gt::tab_footnote(footnote = "In bytes.",
    #              locations = gt::cells_column_labels(columns = length)) %>%
    gt::tab_source_note(., "Code: github.com/judith-bourque") %>%
    # Add space in numbers
    gt::fmt_number(followers, sep_mark = ",", decimals = 0) %>%
    gt::fmt_number(popularity, sep_mark = ",", decimals = 0) %>%
    # Customized version of gtExtras::gt_theme_dark()
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
      data_row.padding = gt::px(7)
    ) %>%
    gt::tab_style(
      style = gt::cell_text(
        color = "white",
        font = gt::google_font("Source Sans Pro"),
        transform = "uppercase"
      ),
      locations = gt::cells_column_labels(everything())
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
    gtExtras::gt_fa_column(like,
                           prefer_type = "solid",
                           palette = "lightgreen",
                           align = "center") %>%
    # Add padding
    gt::opt_horizontal_padding(scale = 3) %>%
    gt::opt_vertical_padding(scale = 1.5) %>%
    gt::opt_table_outline(., style = "none", width = gt::px(0))

}
