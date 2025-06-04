# 1. Create your own data frame of 5 medical students:

medical_students <- data.frame(
  Name =c("Abbott","Lillian","Joan","Ishimwe","Joy"),
  Year = c("Year 1","Year 5","Year 4","Year 2","Year 3"),
  Age = c(23,23,35,45,32),
  Willing_to_Donate = c("Yes","No","Yes","Yes","No"),
  stringsAsFactors = FALSE
)
str(medical_students)
summary(medical_students)

medical_students$Knowledge_Score  =c(12,5,9,13,7)
summary(medical_students)

knowledgable <- medical_students[medical_students$Knowledge_Score >= 12,]
knowledgable

medical_students_tbl <- as_tibble(medical_students)

medical_students_tbl%>%
  select(Name,Willing_to_Donate)

