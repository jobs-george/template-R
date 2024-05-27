# renv::init()
# renv::install("dplyr")

library(dplyr)

path_data <- file.path("data", "iris.csv")
path_myplot <- file.path("src", "myplot.R")

source(path_myplot)

if (file.exists(path_data)) {
  df <- readr::read_csv(file = path_data)
} else {
  df <- as.data.frame(iris)
  readr::write_csv(x = df, file = path_data)
}

head(df)

myplot(x = df$Petal.Width, y = df$Petal.Length)