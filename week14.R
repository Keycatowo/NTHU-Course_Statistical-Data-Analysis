# 1
a <- c(38.5,21.1,53,25.1,13.6,7.3,38.7,40.7,13.3,24,12.5,22.7)
b <- c(44.9,15.2,27.5,23.3,25.8,8.1,23.6,49.3,18.2,28.3,13.3,26.2)
d <- a-b
T0 <- mean(d)/(sd(d)/sqrt(length(d)))
(1-pt(T0,length(d)-1))*2
t.test(a,b,paired = T)
print("p��>0.05,�L�����Ҿڻ�����㦳�\��")

# 2
a <- c(14,18,2,4,-5,14,-3,-1,1,6,3,3)
b <- c(8,26,-7,-1,2,9,0,-4,13,3,3,4)
d <- a-b
T0 <- mean(d)/(sd(d)/sqrt(length(d)))
(1-pt(T0,length(d)-1))*2
t.test(a,b,paired = T)
print("H0:���L�RB��IQ���v�T H1:���L�RB��IQ�L�v�T")
print("p��>0.05,�L�����Ҿڻ�����㦳�\��")

# 3
## a
a <- c(254,240,279,284,315,250,298,384,310,337)
b <- c(2.71,2.96,2.62,2.19,2.68,2.64,2.37,2.61,2.12,1.94)
library(tidyverse)
P <- ggplot()+
   geom_point(mapping = aes(x = a,y = b), color = "blue",size = 3 )#+
   # geom_smooth(mapping = aes(x = a,y = b))
P + labs(title = "���G��",x="�x�T�J",y="�魫/����")
## b
r <- cor(a,b,method = "pearson") #�����Y��
sprintf("(b) �����Y�Ƭ�%s",r)
## c
print("H0:�m=0�AH1:�m��0")
T <- (sqrt(length(a)-2)*r)/sqrt(1-r^2)
p <- pt(T,length(a)-2)
sprintf("(c) p-vale��%.5s>0.05,�L�����z�ѻ����ڵ�H0�A�Y�{������������s�b",p)

# 4


# 5
setwd("D:/NTHU/Course/�έp��Ƥ��R/week14 hw")
Data <- read.csv("data.csv",header = T)
age <- Data[,1]
medv <- Data[,2]
r <- cor(age,medv,method = "pearson") #�����Y��
sprintf("�����Y�Ƭ�%s",r)
print("H0:�m=0�AH1:�m��0")
T <- (sqrt(length(a)-2)*r)/sqrt(1-r^2)
p <- pt(T,length(a)-2)
sprintf("(c) p-vale��%.5s>0.05,�L�����z�ѻ����ڵ�H0�A�Y�{������������s�b",p)


