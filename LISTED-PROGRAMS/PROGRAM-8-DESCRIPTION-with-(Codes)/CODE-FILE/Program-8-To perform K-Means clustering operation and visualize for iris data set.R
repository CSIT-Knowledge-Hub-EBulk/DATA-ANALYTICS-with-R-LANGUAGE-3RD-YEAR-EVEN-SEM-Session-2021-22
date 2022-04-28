# Program-8-To perform K-Means clustering operation and visualize for iris data set
library(ggplot2)
df <- iris
head(iris)
#Let's make a scatterplot.

ggplot(df, aes(Petal.Length, Petal.Width)) + geom_point(aes(col=Species), size=4)
#As we can see, setosa is going to be clustered easier. Meanwhile, there is noise between versicolor and virginica even when they look like perfectly clustered.

#Let's run the model. kmeans is installed in the base package from R, so we don't have to install any package.

#In the kmeans function, it is necessary to set center, which is the number of groups we want to cluster to. In this case, we know this value will be 3. Let's set that.

#, but let's see how we would build the model if we didn't know it.
set.seed(101)
irisCluster <- kmeans(df[,1:4], center=3, nstart=20)
irisCluster
#We can compare the predicted clusters with the original data.

table(irisCluster$cluster, df$Species)
#We can plot out these clusters.

library(cluster)
clusplot(iris, irisCluster$cluster, color=T, shade=T, labels=0, lines=0)
#We can see the setosa cluster perfectly explained, meanwhile virginica and versicolor have a little noise between their clusters.

#As I said before, we will not always have the labeled data. If we would want to know the exactly number of centers, we should have built the elbow method.

tot.withinss <- vector(mode="character", length=10)
for (i in 1:10){
  irisCluster <- kmeans(df[,1:4], center=i, nstart=20)
  tot.withinss[i] <- irisCluster$tot.withinss
}
#Let's visualize it.

plot(1:10, tot.withinss, type="b", pch=19)
# As we saw, the optimal number of clusters is 3.