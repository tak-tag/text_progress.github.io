#Defining data
D1 <-read.csv("data/mlogitdata.csv")

D1 <- mlogitdata
ID <-D1$ID
PT <-D1$t
PRICE <-cbind(D1$Price1,D1$Price2,D1$Price3,D1$Price4)
DISP <-cbind(D1$Disp1,D1$Dip2,D1$Disp3,D1$Disp4)
BUY <-cbind(D1$Buy1,D1$Buy2,D1$Buy3,D1$Buy4)

##Estimation of MNL mdoel
## Defining log-likelihood function of Logit model
fr <- function(x,BUY,PRICE,DISP) { 
  b1 <- x[1]
  b2 <- x[2]
  b01<- x[3]
  b02<- x[4]
  b03<- x[5]
  
  U1<-b1*PRICE[,1]+b2*DISP[,1]+b01
  U2<-b1*PRICE[,2]+b2*DISP[,2]+b02
  U3<-b1*PRICE[,3]+b2*DISP[,3]+b03
  U4<-b1*PRICE[,4]+b2*DISP[,4]
  
  d<-exp(U1)+exp(U2)+exp(U3)+exp(U4)
  
  LLI<-BUY[,1]*U1 +BUY[,2]*U2+BUY[,3]*U3+BUY[,4]*U4-log(d)
  
  LL<- sum(LLI)
  return(LL)
}

b0<-c(0, 0, 0, 0, 0) #Setting the initial value

### Maximization of log-likelihood function fr
res<-optim(b0, fr, gr=NULL, BUY, PRICE, DISP, method = "BFGS", hessian = TRUE, control=list(fnscale=-1))

### estimating coefficients
b<-res$par
### t-value and model fit
tval<-b/sqrt(-diag(solve(res$hessian)))
AIC<- -2*res$value+2*length(res$par)
BIC<- -2*res$value+log(nrow(BUY))*length(res$par)

b #coefficients
tval #t-values
AIC
BIC
