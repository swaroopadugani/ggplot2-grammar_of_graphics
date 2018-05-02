#Loading ggplot2 package
library(ggplot2)

#selection of data
ggplot(data = Iris)

#mapping aesthetics x and y axis on the graph
ggplot(data = Iris,aes(x=PetalLengthCm,y=SepalLengthCm))

#Selecting the geometry i.e geom points
ggplot(data = Iris,aes(x=PetalLengthCm,y=SepalLengthCm))+geom_point()

#Using color aesthetic we are mapping species onto the graph
ggplot(data = Iris,aes(x=PetalLengthCm,y=SepalLengthCm,col=Species))+geom_point()

#Using shape aesthetic we are mapping species onto the graph
ggplot(data = Iris,aes(x=PetalLengthCm,y=SepalLengthCm,shape=Species))+geom_point()

#Using color and shape aesthetics we are mapping species onto the graph
ggplot(data = Iris,aes(x=PetalLengthCm,y=SepalLengthCm,col=Species,shape=Species))+geom_point()

show(Iris)
