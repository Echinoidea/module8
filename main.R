require(pryr)
require(ISLR)
require(boot)
library(pryr)
library(ISLR)
library(boot)

df <- read.table("Assignment 6 Dataset.txt", sep = ",", header = TRUE)
student_average <- plyr::ddply(df, "Sex", transform, Grade.Average = mean(Grade))

write.table(student_average, "student_average.txt", sep=", ")

only_i <- subset(df, grepl("[iI]", df$Name))

write.table(only_i, "student_only_i.txt", sep = ", ")