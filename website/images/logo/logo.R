# install.packages("hexSticker")


library(hexSticker)
library(ggplot2)

p <- ggplot() +
  coord_cartesian(xlim = c(0, 12), ylim = c(0, 20), expand = FALSE) +
  theme_void() +
  theme(
    panel.background = element_rect(fill = "white", colour = NA),
    panel.grid.major = element_line(color = "#e9f0e9", linewidth = 0.6),
    panel.grid.minor = element_line(color = "#f3f7f3", linewidth = 0.4)
  ) +
  scale_x_continuous(
    breaks = seq(0,12,1),
    minor_breaks = seq(0,12,0.5)
  ) +
  scale_y_continuous(
    breaks = seq(0,20,2),
    minor_breaks = seq(0,20,1)
  )

s<- sticker(
  p,
  package = "DataSoc",
  p_size = 20,
  s_x = 1,
  s_y = 0.95,
  s_width = 1.7,
  s_height = 1.7,
  h_fill = "white",
  h_color = "#467946",
  p_color = "#467946",
  filename = "images/logo/figures/baseplot.png"
)
s
