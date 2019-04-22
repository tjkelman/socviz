my_packages <- c("tidyverse", "broom", "coefplot", "cowplot",
                 "gapminder", "GGally", "ggrepel", "ggridges", "gridExtra",
                 "here", "interplot", "margins", "maps", "mapproj",
                 "mapdata", "MASS", "quantreg", "rlang", "scales",
                 "survey", "srvyr", "viridis", "viridisLite", "devtools")

install.packages(my_packages, repos = "http://cran.rstudio.com")

devtools::install_github("kjhealy/socviz")

library(gapminder)
library(ggplot2)
library(ggthemes)

ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)) +
  geom_point() +
  theme_myriad(axis_title_size = 22, axis_title_face = "plain") +
  xlab("this is a test")

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y=lifeExp))
p + 
  geom_point() + 
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::comma)

p <- ggplot(data = gapminder, mapping = aes(x = gdpPercap, y=lifeExp))
p + geom_point(alpha = 0.3) +
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::dollar) +
  labs(x = "GDP Per Capita", y = "Life Expectancy in Years",
       title = "Economic Growth and Life Expectancy",
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")
