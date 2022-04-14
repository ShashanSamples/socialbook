#01
library("ggplot2")
data("diamonds")
ggplot(diamonds,aes(x=price))+geom_histogram(binwidth=500,color="yellow",fill="red")+xlab("Diamond Price US$")+ylab("Frequency")+ggtitle("Diamond Price Distribution")

#02
ggplot(diamonds,aes(x=price,y=carat,col=cut))+geom_point(size=3)+ggtitle("Scatter Plot for price vs carat")+xlab("Price in US dollars")+ylab("Weight of the diamond")+scale_color_discrete("quality")


#03
diamonds$price
ggplot(diamonds,aes(x=cut,y=price,fill=cut))+geom_boxplot(outlier.color = "red")+xlab("Type of cut")+ylab("Diamond price US$")+ggtitle("Diamond price according to cut")+theme(legend.position = "top")+coord_flip()+scale_y_continuous(n.breaks = 10)

#Q2)
school<-data.frame(Subject=c("Science","Arts","Medicine","Engineering","AHS"),No_of_students=c(27,35,18,12,28))


#01
library(dplyr)
ggplot(data,aes(x="",y=prop,fill=Subject))+geom_bar(stat = "identity",width = 1,color="white")+coord_polar("y",start = 0)+ggtitle("Scholarship Fund-Student per Faculty")+theme_void()+scale_fill_brewer(palette = "Set2")+geom_text(aes(y=ypos, label=paste(round(prop,2),"%")))
data<-school %>%
  arrange(desc(Subject)) %>%
  mutate(prop=No_of_students/sum(No_of_students)*100) %>%
  mutate(ypos = cumsum(prop)-0.5*prop)
data
#02

ggplot(school,aes(x=Subject,y=No_of_students,fill=Subject))+geom_bar(stat = "identity")+ggtitle("Scolar Fund-Students per Faculty")+xlab("Subject")+ylab("Student")+scale_fill_manual(values = c("yellow","red","orange","purple","blue"))

