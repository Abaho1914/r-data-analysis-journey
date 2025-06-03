# Creating factor blood type
blood_type <- factor(c("A","O","B","AB","O"))
levels(blood_type)
table(blood_type)

#Rename Levels
blood_type <- factor(blood_type,levels =c("A","B","AB","O"),labels = c("A positive","B positive","AB positive","O positive"))
print(blood_type)
