#Selecting species column from the Iris dataset
table(Iris$Species)


#mapping petal length and sepal length
"simple scatter plot shows as petal length increases sepal length also increases"
plot(Iris$SepalLengthCm~Iris$PetalLengthCm,ylab="Sepal Length",xlab="Petal Length",main="SepalLengthVSPetalLength", col = "blue", pch = 16)


#Observation with histogram
"Max number of flowers have sepal width between 2.5 to 3"
hist(Iris$SepalWidthCm, xlab = "Sepal Width", main = "Distribution of sepal width",col = "aquamarine")

#box_plot to determine contineous variable change
#Observation "Iris-verginica has maximum species length and Iris-setosa has min sepal length" 
boxplot(Iris$SepalLengthCm~Iris$Species, xlab = "Spices", ylab = "Sepal Length", main = "Sepal Length with diff Speices",col="burlywood")
