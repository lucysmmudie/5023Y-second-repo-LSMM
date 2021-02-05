### Calls packages
library(tidyverse)
library(plotly)
library(palmerpenguins)

### Plots figure
penguin_graph<-ggplot(data = penguins,aes(x= bill_length_mm, y= bill_depth_mm))+
  geom_point(aes(size= body_mass_g, color= species), alpha= 0.4)+ 
  scale_color_manual(values = c("aquamarine3", "gold", "orchid"))+ theme_minimal()+ 
  labs(x = "Bill Length (mm)", y= "Bill Depth (mm)", title = "Penguin Measurements")

plot(penguin_graph)

### Makes figure interactive
ggplotly(penguin_graph, tooltip = c("species"))
