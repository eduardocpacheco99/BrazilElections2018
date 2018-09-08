#ler arquivo

df <- read.csv('candidates.csv',sep=',')

Hist(df$Semana,df$Ciro_Gomes)

str(df)

mean(df$Jair_Bolsonaro)

plot( c(mean(df$Ciro_Gomes),mean(df$Jair_Bolsonaro),mean(df$Haddad),mean(df$Marina_Silva))
)
c('Ciro Gomes','Jair Bolsonaro','Haddad','Marina Silva'),


df$Semana

plot(x, sin(x),
     main="Overlaying Graphs",
     ylab="",
     type="l",
     col="blue")
lines(x,cos(x), col="red")
legend("topleft",
       c("sin(x)","cos(x)"),
       fill=c("blue","red")
)