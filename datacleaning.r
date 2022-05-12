suppressWarnings(library(janitor))
suppressWarnings(library(dplyr))
d = read.csv(file <- "C://Users//Aradhana Agrawal//Desktop//Shresth MPSTME//SEM3//PS//Project//train_age_dataset.csv",
    header = TRUE
)

#cleaning column names
clean<-clean_names(d)
print(colnames(clean))

#removing empty column or row
clean_x<-clean %>% remove_empty(whic=c("rows"))
clean_x<-clean %>% remove_empty(whic=c("cols"))