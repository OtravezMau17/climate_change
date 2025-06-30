# run_all.R
# Set working directory
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))  # para que funcione desde RStudio
setwd("C:/Users/galla/Downloads/ediam") 

# Load required scripts
source("Main/ClimateCalibration.r")
source("Main/Ediam_vFrontiers.r")
source("Main/Main_vFrontiers.r")
source("Main/sdprim_vFrontiers.r")
source("Main/harness_processing.r")
source("Main/main_calib.r")

# Load input datahttps://github.com/OtravezMau17/climate_change/tree/main
exp_design <- read.csv("Data/Exp.design.csv")
climate <- read.csv("Data/Climate.csv")
policies <- read.csv("Data/Policies.csv")
limits <- read.csv("Data/Limits_original.csv")

# Example: run first experiment from exp_design
# output <- ediamMain(calib.params = exp_design[1, ], ... )

# Plot example (placeholder)
# plot(output$GDP.N, type="l", main="GDP - Advanced Region")

# Save results
# write.csv(output, "Results/Run_1_output.csv")
