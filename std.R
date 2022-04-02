dataset <- c(4,8,9,4,7,5,2,3,6,8,1,8,2,6,9,4,7,4,8,2)
#dataset <- c(4,4,4)
cat(sd(dataset))
#cat("\n")


dataset = c(4,8,9,4,7,5,2,3,6,8,1,8,2,6,9,4,7,4,8,2)
#dataset = c(4,4,4)
the_mean = mean(dataset)
cat("\n")
cat(the_mean)
cat("\n")

sumdataset = function(dataset){dataset-the_mean}
Observation_Mean = sumdataset(dataset)
# cat(Observation_Mean)
# cat("\n")

square_Observation_Mean = Observation_Mean*Observation_Mean
# cat(square_Observation_Mean)
# cat("\n")

sum_square_Observation_Mean = sum(square_Observation_Mean)
standard_deviation = sqrt(sum_square_Observation_Mean/(length(dataset)-1))
cat(standard_deviation)


