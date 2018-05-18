library(ggplot2)

#geometry(geom)
#Histogram
#Using histogram geometry 
ggplot(data=Iris,aes(x=SepalLengthCm))+geom_histogram()

"`stat_bin()` using `bins = 30`. Pick better value with `binwidth'"
#bin default value is 30,by adding the bin value it provides the greater variation in value distribution
ggplot(data=Iris,aes(x=SepalLengthCm))+geom_histogram(bins = 30)

#adding col to the geometry with fill arg
ggplot(data=Iris,aes(x=SepalLengthCm))+geom_histogram(bins = 30,fill="palegreen2")

#Boundry color can be added by using col arg in geometry
ggplot(data=Iris,aes(x=SepalWidthCm))+geom_histogram(bins = 30,fill="palegreen2",col="palegreen4")

#using fill in aesthetics
ggplot(data=Iris,aes(x=SepalWidthCm,fill=Species))+geom_histogram(bins = 30)
"Observation Using fillin species provides distinction on each type of flower
with respect to Sepal Width"


#Position
#using position provides proportion instead of count
ggplot(data=Iris,aes(x=SepalLengthCm,fill=Species))+geom_histogram(bins = 30,position = "fill")
"Observation: Iris-vergnica has max sepal length iris-versicolor has medium and iris-setosa has min"

#distribution of countineous variables hostogram and chategorical variable distribution for bar plot

#Barplot
ggplot(data=Iris,aes(x=PetalLengthCm,fill=Species))+geom_bar(position = "fill")
"Observation: If the petal length is max its Iris-virginica and if its min it is iris-setosa"

ggplot(data=Iris,aes(x=PetalLengthCm,fill=Species))+geom_bar(position = "fill")


#frequency polygon
ggplot(data=Iris,aes(x=SepalLengthCm))+geom_freqpoly()
ggplot(data=Iris,aes(x=SepalLengthCm, col = Species))+geom_freqpoly(bins=30)
"Observation: Each species is represented with diff color, iris setosa has min Sepallength and Iris-verginica has max SepalLength"

#Boxplot
#Factor converts numerical values into chategorical value
ggplot(data=Iris,aes(x=factor(SepalLengthCm),y=SepalWidthCm))+geom_boxplot()

#fill aes is set to PetalLength, each size of petal length is represented with diff color
ggplot(data=Iris,aes(x=factor(PetalLengthCm),y=PetalWidthCm,fill=factor(PetalLengthCm)))+geom_boxplot()

#smooth line
ggplot(data=Iris,aes(x=PetalLengthCm,y=PetalWidthCm))+geom_smooth()
"Observation: as petal length increases petal width also increases"
#removing the error by setting se=f
ggplot(data=Iris,aes(x=PetalLengthCm,y=PetalWidthCm,col=Species))+geom_smooth(se=F)
"Observation: Iris setosa has min petal length and width compared to iris verginica and iris versicolor"
ggplot(data=Iris,aes(x=PetalLengthCm,y=PetalWidthCm,col=SepalLengthCm))+geom_smooth(se=F)


#adding geom_point and linear_method(lm) in geom_smooth 
ggplot(data=Iris,aes(x=PetalLengthCm,y=PetalWidthCm,col=Species))+geom_smooth(method="lm",se=F)+geom_point()

#facet_grid - helps in deviding the data to generate diff plots on single dashboard
ggplot(data=Iris,aes(x=PetalLengthCm,y=PetalWidthCm,col=Species))+geom_smooth(method="lm",se=F)+geom_point()+facet_grid(~Species)


