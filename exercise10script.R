### Introduction to Biocomputing — Exercise 10 — Matthew Doktorczyk

## Question 1

# Read in data (I created my own data on years of education and wages)
data1<-read.csv("educWageDATA.csv", header=TRUE)

# Make scatterplot for 2 variables (years of education and wages)
ggplot(data=data1, aes(Years.of.Education,Wage)) +
  geom_point() +
  theme_classic() +
  stat_smooth(method="auto")

## Question 2

# Read in data
data2<-read.table("data.txt", header=TRUE)

# Bar plot
ggplot(data2, aes(x=region, y=X..observations.)) +
  stat_summary(fun=mean, geom="bar") +
  xlab("Region") +
  ylab("Population Mean") +
  theme_classic()

# Scatter plot
ggplot(data2, aes(x=region, y=X..observations.)) +
  geom_jitter(aes(alpha=0.1)) +
  xlab("Region") +
  ylab("Observation count") +
  theme_classic()

# Interpretation
# Yes, the two plots tell different stories. On one hand, the bar plot suggests
# that observations for each region are quite similar because their means are 
# similar. However, the scatter plot shows that the regions have different data
# distributions despite having similar means. Thus, the bar plot can be somewhat
# misleading, and the scatter plot is needed to provide clarity. 