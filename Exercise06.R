setwd("~/Desktop/Exercise_06/IBC_Exercise_06")

# Part 1: Write code that uses file and number of lines as variables to complete head function 

Heading<-function(filename, x){
  myfile = read.csv(filename)
  heading = myfile[1:x,]
  return(heading)
}

  # example using iris.csv file 
  Heading("iris.csv",5)

#Part 2: Loads data contained in "iris.csv" file
iris <- read.csv(file = "iris.csv")
# print last two rows in the last two columns to R terminal 
rowcol = dim(iris)
rowcolminus = rowcol - 1 
rowcol[1]
last2 = iris[rowcol[1]:rowcolminus[1],rowcol[2]:rowcolminus[2]]
last2

# get number of observations for each species 
unique_species = unique(iris$Species)
setosa = iris$Species == unique_species[1]
versicolor = iris$Species == unique_species[2]
virginica = iris$Species == unique_species [3]

# get rows where Sepal.Width > 3.5


# write the data for the species setosa into a comma-delimited file named "setosa.csv" 

# calculate the mean, minimum, and maximum of petal length 

