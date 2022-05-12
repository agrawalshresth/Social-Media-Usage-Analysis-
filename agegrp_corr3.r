suppressWarnings(library(ggpubr))
suppressWarnings(library(GGally))
library(e1071)  # for skewness function
# par(mfrow=c(1, 2))  # divide graph area in 2 columns
d = read.csv(file <- "C://Users//Aradhana Agrawal//Desktop//Shresth MPSTME//SEM3//PS//Project//train_age_dataset.csv",
    header = TRUE
)
# correlation b/w age grp and following age group
cat("\n")
print("=====================================================================================")
print("Linear Regression Model for relation between Age group and Following Rate:")
print("-------------------------------------------------------------------------------------")
# Graphical Representation using Scatter Plot with Line of Regression:
# line of regression
g = ggscatter(d,
    x = "following_rate", y = "age_group",
    add = "reg.line", conf.int = TRUE,
    cor.coef = TRUE, cor.method = "pearson",
    xlab = "Following Rate", ylab = "Age Group"
)
print(g)

# Checking Normality of the graph:
plot(density(d$following_rate),
    main = "Density Plot: Following Avg Age", ylab = "Frequency",
    sub = paste("Skewness:", round(e1071::skewness(d$following_rate), 2))
)
polygon(density(d$following_rate), col = "red")
print("-------------------------------------------------------------------------------------")
# correlation b/w age grp and following rate
cat("\n")
print("Correlation between Age Group and Following Rate")

# pearsons correlation test
res <- cor.test(d$age_group, d$following_rate, method = "pearson")
print(res)
print("-------------------------------------------------------------------------------------")
print("Linear Regression Model:")
linearMod <- lm(d$following_rate~d$age_group, data=d)  # build linear regression model on full data
print(linearMod)
brief <- summary(linearMod)
print(brief)
print("=====================================================================================")
