library(ggplot2)
g <- ggplot(
  data = sods_data,
  mapping = aes(x = year, y = percentage)) +
  geom_point() +
  geom_smooth(method = "lm", colour = "darkgrey") +
  geom_text(
    aes(x = 2020, y = 82.8, label = "only GitHub"),
    size = 3,
    nudge_x = 0.2,
    nudge_y = -6) +
  labs(
    x = "Year",
    y = "Percentage who used git") +
  ylim(c(0,100)) +
  theme_bw()

sink(file = "out/package-versions.txt")
sessionInfo()
sink()
