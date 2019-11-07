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
last2 = iris[rowcol[1]:rowcolminus[1],rowcol[2]:rowcolminus[2]]
last2

# get number of observations for each species 
unique_species = unique(iris$Species)

setosa = subset(iris, iris$Species == unique_species[1])
setosa_observations = nrow(setosa)

versicolor = subset(iris, iris$Species == unique_species[2])
versicolor_observations = nrow(versicolor)

virginica = subset(iris, iris$Species == unique_species [3])
virginica_observations = nrow(virginica)

# get rows where Sepal.Width > 3.5
big_sepal_width = subset(iris, iris$Sepal.Width > 3.5)
big_sepal_width

# write the data for the species setosa into a comma-delimited file named "setosa.csv" 
write.csv(setosa, file = "setosa.csv")

# calculate the mean, minimum, and maximum of petal length 
mean_petal_length = mean(iris$Petal.Length)
min_petal_length = min(iris$Petal.Length)
max_petal_length = max(iris$Petal.Length)

