#
# This is a Shiny App which shows the population of elephants, tigers and leopards in different states of India.
# The side panel gives the option of selecting one or more of the animals
# On the main panel is a map drawn using Leaflet package to dynamically show the population. The size of the circle corresponds to the population.
# The color of circle corresponds to the animal selected.
# On clicking on the icons, the user can see the details - Name of the state, name of the animal and the population
# App hosted on https://deeptichauhan.shinyapps.io/shinyapp/

library(shiny)
library(leaflet)
# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Old Faithful Geyser Data"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
			h3("Choose Animals"),
			checkboxInput("elephant", "Elephants", value = TRUE),
			checkboxInput("tiger", "Tigers", value = FALSE),
			checkboxInput("leopard", "Leopards", value = FALSE),
        ),

        # Show a plot of the generated distribution
        mainPanel(
            h3("Population of Animals in Indian States"),
	    p("This is a Shiny App which shows the population of elephants, tigers and leopards in different states of India.
				The side panel gives the option of selecting one or more of the animals
				On the main panel is a map drawn using Leaflet package to dynamically show the population. The size of the circle corresponds to the population.
				The color of circle corresponds to the animal selected.
				On clicking on the icons, the user can see the details - Name of the state, name of the animal and the population"),
	    leafletOutput("mapPlot"),
        )
    )
))
