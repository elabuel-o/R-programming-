
#################################################
## R-programming course -- Coursera -- Feb, 2016
## Week 2 Programming assignment
#################################################

## Part 1. 
## Function: pollutantmean
## Calculate the mean of a pollutant (suflate or nitrate) across a specified 
## list of monitors.
## The function takes 3 arguments: directory, pollutant and id. 

pollutantmean <- function(directory, pollutant, id = 1:332){
        # Prototype:
        ## directory is a character vector of length 1 indicating 
        ## the location of the CSV file.
        
        ## pollutant is a character vector of length 1 indicating
        ## the name of the pollutant of which we will calculate the 
        ## mean: sulfate or nitrate.
        
        ## id is an integer vector indicating the monitor id numbers 
        ## to be used.
        
        ## Return the mean of the pollutant across all monitors list 
        ## in the id vector (ingnoring NA values)
        
        ## Set directory:
        dir <- paste("./", directory, "/", sep = "")
        
        ## Set a numeric (NULL) vector to display the means
        ## This vector will be filled with computed means in the next step
        means <- c()
        
        ## Files in the directory
        ## The list.files function lists all the files in the directory:
        ## Create a character vector w/ files in the directory
        files <- as.character(list.files(dir))
        
        ## Create a character vector w/ file paths
        paths <- paste(dir, files, sep = "")
        
        ## For i in id select the corresponding ids to compute means
        for (i in id){
                df <- read.csv(paths[i], header = TRUE)
                pollutant
                no.nas <- df[!is.na(df[, pollutant]), pollutant]
                means <- c(means, no.nas)
        }
        ## The computed vector of lenght 1 with the mean
        final <- mean(means)
        
        ## Displaying the mean! (a numeric vector of length 1)
        final
}
