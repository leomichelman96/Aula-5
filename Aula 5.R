> library(readxl)
> library(urca)
> 
  > library(readxl)
> IPCA <- read_excel("C:/Econometria/IPCA.xls")
> View(IPCA)
> inflação <- td(IPCA,start=2008-01,frequency=12)
Error in td(IPCA, start = 2008 - 1, frequency = 12) : 
  could not find function "td"
> inflação <- ts(IPCA,start=2008-01,frequency=12)
> inflação <- inflação[,-1]
> view(inflação)
Error in view(inflação) : could not find function "view"
> View(inflação)
> TesteDF <- summary(ur.df(inflação, type="none",lags=0))
> acf(IPCA$IPCA, main= "Inflação Mensal")
> AR1 <- arima(inflação, order=c(1,0,0))
> arima(x=inflação, order=c(1,0,0))