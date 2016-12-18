gradesummaries <- function(data){
	output <- data %>% group_by(Student) %>% summarize(mean(Grade))
	return(output)
}
return(gradesummaries)

