suppressMessages(library(epiDisplay))
suppressMessages(library(RColorBrewer))
d = read.csv(file <- "C://Users//Aradhana Agrawal//Desktop//Shresth MPSTME
//SEM3//PS//Project//train_age_dataset.csv", header = TRUE)

# frequency distribution table in r
freq=tab1(d$gender, sort.group = "decreasing", cum.percent = TRUE)
print(freq)

# barplot of gender
b = barplot(table(d$gender), names.arg=c("Male","Female"),
    cex.names=0.8, legend = TRUE, xlab = "Gender", ylab = "User Count",
    col = brewer.pal(n = 8, name = "RdBu"), main = "Detailed BarPlot Gender"
)
print(b)

# probability density graph
plot(density(d$gender),
    main = "Density Plot: Gender", ylab = "Frequency",
    sub = paste("Skewness:", round(e1071::skewness(d$gender), 2))
)
polygon(density(d$gender), col = "red")