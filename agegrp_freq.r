# suppressMessages(library(dplyr))
# suppressMessages(library(corrplot))
suppressWarnings(suppressMessages(library(epiDisplay)))
suppressMessages(library(RColorBrewer))
d = read.csv(file <- "C://Users//Aradhana Agrawal//Desktop//Shresth MPSTME//SEM3//PS//Project//train_age_dataset.csv", header = TRUE)

# # frequency distribution table in r
# freq=tab1(d$age_group, sort.group = "decreasing", cum.percent = TRUE)
# print(freq)

# # barplot of age groups
# b = barplot(table(d$age_group), names.arg=c("00-18 years","18-24 years","25-30 years","30 years \nand above"),
#     cex.names=0.8, legend = TRUE, xlab = "Age Group", ylab = "User Count",
#     col = brewer.pal(n = 8, name = "RdBu"), main = "Detailed BarPlot Age Group"
# )
# print(b)

# probability density graph
plot(density(d$age_group),
    main = "Density Plot: Age Group", ylab = "Frequency",
    sub = paste("Skewness:", round(e1071::skewness(d$age_group), 2))
)
polygon(density(d$age_group), col = "red")