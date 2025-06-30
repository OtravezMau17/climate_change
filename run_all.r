# ========================================================================
# main.R — Reproducible EDIAM run (base simulation)
# ========================================================================

# 1. Libraries
library(deSolve)
library(ggplot2)
library(dplyr)
library(tidyr)

# 2.Model functions
source("ediamMain.R")
source("EdiamEquations.R")
source("ediamInitialConditions.R")
source("ediamEmpiricalParameters.R")
source("uncertainty.R")
source("plotting_functions.R") 

# 3. Base parameters
calib.params <- read.csv("Data/Calibration.csv", row.names = 1)
policy.params <- read.csv("Data/Policies.csv", row.names = 1)
climate.params <- read.csv("Data/Climate.csv", row.names = 1)

# 4. Base simulation
output <- ediamMain(calib.params, verbose = TRUE)

# 5. Out dir
if (!dir.exists("Outputs")) dir.create("Outputs")

# 6. Generate base graphs
# E.g. emissions in advanced and emergent economies:
p1 <- ggplot(output, aes(x = time)) +
  geom_line(aes(y = Emissions.N, color = "Advanced")) +
  geom_line(aes(y = Emissions.S, color = "Emerging")) +
  labs(title = "CO2 Emissions", x = "Year", y = "GtCO2", color = "Region") +
  theme_minimal()
ggsave("Outputs/emissions.png", p1)

# E.g. global temperature
p2 <- ggplot(output, aes(x = time, y = Temperature)) +
  geom_line(color = "tomato") +
  labs(title = "Global Temperature Rise", x = "Year", y = "Degrees C") +
  theme_minimal()
ggsave("Outputs/temperature.png", p2)

# E.g. Social welfare
p3 <- ggplot(output, aes(x = time)) +
  geom_line(aes(y = D.Utility.Consumer.N, color = "Advanced")) +
  geom_line(aes(y = D.Utility.Consumer.S, color = "Emerging")) +
  labs(title = "Social Welfare Over Time", x = "Year", y = "Utility") +
  theme_minimal()
ggsave("Outputs/welfare.png", p3)

cat("Simulation completed. Graphs saved in Outputs.\n")

