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
print("Linear Regression Model for relation between Age group and Following Average age:")
print("-------------------------------------------------------------------------------------")
# Graphical Representation using Scatter Plot with Line of Regression:
# line of regression
g1 = ggscatter(d,
    x = "following_avg_age", y = "age_group",
    add = "reg.line", conf.int = TRUE,
    cor.coef = TRUE, cor.method = "pearson",
    xlab = "Following Average Age", ylab = "Age Group"
)
print(g1)

# Checking Normality of the graph:
plot(density(d$following_avg_age),
    main = "Density Plot: Following Avg Age", ylab = "Frequency",
    sub = paste("Skewness:", round(e1071::skewness(d$following_avg_age), 2))
)
polygon(density(d$age_group), col = "red")
print("-------------------------------------------------------------------------------------")
print("Correlation between Age Group and Following Average Age")

# pearsons correlation test
res <- cor.test(d$age_group, d$following_avg_age, method = "pearson")
print(res)
print("-------------------------------------------------------------------------------------")
print("Linear Regression Model:")
linearMod <- lm(d$following_avg_age~d$age_group, data=d)  # build linear regression model on full data
print(linearMod)
brief <- summary(linearMod)
print(brief)
print("=====================================================================================")

# # correlation b/w age grp and followers age group
# cat("\n")
# print("Correlation between Age Group and Followers Average Age")

# # pearsons correlation test
# res <- cor.test(d$age_group, d$followers_avg_age, method = "pearson")
# print(res)

# # line of regression
# g2 = ggscatter(d,
#     x = "followers_avg_age", y = "age_group",
#     add = "reg.line", conf.int = TRUE,
#     cor.coef = TRUE, cor.method = "pearson",
#     xlab = "Followers Average Age", ylab = "Age Group"
# )
# print(g2)

# # correlation b/w age grp and following rate
# cat("\n")
# print("Correlation between Age Group and Following Rate")

# # pearsons correlation test
# res <- cor.test(d$age_group, d$following_rate, method = "pearson")
# print(res)

# # line of regression
# g = ggscatter(d,
#     x = "following_rate", y = "age_group",
#     add = "reg.line", conf.int = TRUE,
#     cor.coef = TRUE, cor.method = "pearson",
#     xlab = "Following Rate", ylab = "Age Group"
# )
# print(g)

# plot(density(d$age_group),
#     main = "Density Plot: Speed", ylab = "Frequency",
#     sub = paste("Skewness:", round(e1071::skewness(d$age_group), 2))
# )
# polygon(density(d$age_group), col = "red")
