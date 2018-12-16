library(survival)
tdata=read.csv("c:/data/tdata.csv")
tdata[1:10,]
sdata=read.csv("c:/data/sdata.csv")
sdata[1:10,]
tfit<- coxph(Surv(survtime,death)~trt+year+age+surgery,data=tdata)
tfit
sfit<-coxph(Surv(tstart, tstop, death) ~ trt+year+age+surgery,data=sdata)
sfit

