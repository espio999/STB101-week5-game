v1=c()
for (i in week5data2){
  v1 = c(v1, mean(i))
}
print(v1)

v2=c()
for (i in week5data2){
  v2 = c(v2, sd(i))
}
print(v2)

mm=mean(v1)
msd=sd(v1)
sig3max=mm+3*msd
sig3min=mm-3*msd

plot(v1)
plot(v1, type="b", ylim=c(sig3min-1, sig3max+1))
abline(h=mm)
abline(h=sig3max)
abline(h=sig3min)

plot(v2, type="b")

plot(week5data1$process1, type="p", ylim=c(sig3min-1, sig3max+1), col="2")
par(new=T)
plot(week5data1$process2, type="p", ylim=c(sig3min-1, sig3max+1), col="3")
par(new=T)
plot(week5data1$process3, type="p", ylim=c(sig3min-1, sig3max+1), col="4")
par(new=T)
plot(week5data1$process4, type="p", ylim=c(sig3min-1, sig3max+1), col="5")
par(new=T)
plot(week5data1$process5, type="p", ylim=c(sig3min-1, sig3max+1), col="6")
abline(h=mm)
abline(h=sig3max)
abline(h=sig3min)


curve(dnorm(x, mean(week5data1$process1), sd(week5data1$process1)), xlim=c(0, 10), col="2")
par(new=T)
curve(dnorm(x, mean(week5data1$process2), sd(week5data1$process1)), xlim=c(0, 10), col="3")
par(new=T)
curve(dnorm(x, mean(week5data1$process3), sd(week5data1$process1)), xlim=c(0, 10), col="4")
par(new=T)
curve(dnorm(x, mean(week5data1$process4), sd(week5data1$process1)), xlim=c(0, 10), col="5")
par(new=T)
curve(dnorm(x, mean(week5data1$process5), sd(week5data1$process1)), xlim=c(0, 10), col="6")
par(new=T)

