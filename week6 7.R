###hw4 week6 7 106022103 �B����

##1

to_east <- c(8,18,28,38,48,58)
to_west <- c(0,10,20,30,40,50,60)
P_to_east <- 0
P_to_west <- 0

for (i in 1:6){
   P_to_east <- P_to_east+(to_east[i]-to_west[i])
   P_to_west <- P_to_west+(to_west[i+1]-to_east[i])
}
print(c("The Probability to east is ",P_to_east/60))
print(c("The Probability to west is ",P_to_west/60))
rm(list=ls())

##2
# (a)
qt(0.95,1)
qt(0.95,5)
qt(0.95,10)
qt(0.95,100)
print("���ۥѫ׶V�j�A95%�����I�V�p")
qt(0.95,Inf)
qnorm(0.95)
print("���ۥѫ��ͪ�ܤj�ɡA95%�����I�ͪ�`�A���G��95%�����I")

# (b)
DF <- c(1,2,5,10)
for (i in 1:4){
   a <- qchisq(0.05,DF[i])
   b <- qchisq(0.95,DF[i])
   X <- sprintf("���ۥѫ׬�%i��,%%5�������I��%f�A%%95�����I��%f",i,a,b)
   print(X)
}
print("���d����G�ۥѫ׶V�j���ɭԡA5%�M95%�����I���V�j")
rm(list=ls())

##3
# (a)
1-pexp(40,rate=0.02) # ���G���ةR�A�G�H1����ܦs��
# (b)
(1-pexp(10+40,0.02))/(1-pexp(10,0.02))
# (c)
(1-pexp(40+40,0.02))/(1-pexp(40,0.02))
# (d)
print("abc���G�L���A�i�����Ƥ��G���L�O�Щ�")
# (e)
qexp(0.5,0.02)

##4
M <- 140
S <- 15
# (a)
X <- 1-(round(pnorm(155,mean=M,sd=S),3)-round(pnorm(125,mean=M,sd=S),3)) # ������h155~125���X��Ϊ��ܤ��X���v
print(round(X,3))
# (b)
X <- 1-round(pnorm(170,mean=M,sd=S),3)
print(X)
# (c)
round(qnorm(0.933,mean=M,sd=S))
rm(list=ls())

##5
par(mfrow=c(2,3))
#�`�A
cut <- seq(-10,10,length.out=1000)
graph.1 <- plot(cut,dnorm(cut,mean=5,sd=2),type="l",xlab=NA,ylab=NA)
title("�`�A-���v���G��")
N.1 <- pnorm(cut,mean=5,sd=2)
graph.2 <- plot(cut,N.1,type="l",xlab=NA,ylab=NA)
title("�`�A-�ֶi���G��")
graph.3 <- boxplot(N.1)
title("�`�A-�����ʤ����")
#�d��
cut <- seq(0,25,length.out = 1000)
graph.1 <- plot(cut,dchisq(cut,df=5),type="l",xlab=NA,ylab=NA)
title("�d��-���v���G��")
F.1 <- pchisq(cut,df=5)
graph.4 <- plot(cut,F.1,type="l",xlab=NA,ylab=NA)
title("�d��-�ֶi���G��")
graph.5 <- boxplot(F.1)
title("�d��-�����ʤ����")
