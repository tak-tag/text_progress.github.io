#PSM用図作成コード
#テキストCh.13

#13.4.1節 L(P)とH(P)
x <- seq(-4, 4, 0.05)
plot(x,dnorm(x, mean=0, sd=0.4), type="n", xlab = "P = Price", ylab = "Freq", xaxt="n", yaxt="n")
curve(pnorm(x, mean=0, sd=0.8), type="l", lty=1, col = "red", lwd = 2, add=T) #安いと感じない人
text(-3, 0.1, "H(P)", cex = 1.3, col = "red")

curve( 1- pnorm(x, mean=0, sd=0.8), type="l", lty=1, col = "blue",  lwd = 2, add=T) #高いと感じない人
text(3, 0.1, "L(P)", cex = 1.3, col = "blue")

#13.4.1節 購買反応曲線
#ベータ分布の最頻値を求めておく
alpha <- 4
beta <-  8
mode_phi <- (alpha - 1) / (alpha + beta - 2)

x <- seq(0, 0.8, 0.05)
plot(x,dbeta(x, alpha, beta), type="n", xlab = "Price", ylab = "Freq", xaxt="n", yaxt="n")
curve(dbeta(x, alpha, beta), lwd = 2, add=T)
abline(v = mode_phi, lty=3)
mtext(side=1, text = "P'", line = 0, adj= 0.385)
title(main="Buy response curve")

#13.4.1節　購買反応密度関数
x <- seq(0, 8, 0.05)

plot(x,dnorm(x, mean=5, sd=1), type="l", xlab = "p = log Price", ylab = "Freq",xaxt="n", yaxt="n")
curve(dnorm(x,3,1),add = TRUE,type="l", col = "red")
curve(dnorm(x,4,1.5),add = TRUE,type="l", lty = 3)
text(2, 0.3, "l(p)", cex = 1.3, font = 3, col = "red")
text(6, 0.3, "h(p)", cex = 1.3, font = 3)
text(4, 0.28, "b(p)", cex = 1.3, font = 3)
segments(x0 = 4, y0 = 0.27, x1 = 4, y1 = -0.05, lty = 3)
mtext(side=1, text = expression((m[1]+m[2])/2), line = 0.5, adj= 0.5)


#13.5節 PSM結果例
x <- seq(-4, 4, 0.05)

plot(x,dnorm(x, mean=0, sd=0.4), type="n", xlab = "Price", ylab = "Freq", xaxt="n", yaxt="n")
curve(pnorm(x, mean=0, sd=0.8), type="l", lty=3, col = "red", lwd = 2, add=T) #安いと感じない人
text(-3, 0.1, "Not cheap", cex = 1.3, col = "red")

curve( 1- pnorm(x, mean=0, sd=0.8), type="l", lty=3, col = "blue",  lwd = 2, add=T) #高いと感じない人
text(3, 0.1, "Not expensive", cex = 1.3, col = "blue")

curve(pnorm(x, mean=1.5, sd=1), type="l", lty=1, col = "blue", add=T) #高すぎる
text(3.3, 0.7, "Too expensive", cex = 1.3, col = "blue")

curve( 1- pnorm(x, mean=-1, sd=0.4), type="l", lty=1, col = "red", add=T) #安すぎる
text(-3, 0.9, "Too cheap", cex = 1.3, col = "red")

points(x = -0.68, y = 0.2, cex=1.5, pch="*") #最低価格
abline(v = -0.68, lty=3)
mtext(side=1, text = expression(underline(P)), line = 0.5, adj= 0.42)

points(x = 0.68, y = 0.2, cex=1.5, pch="*") #最高価格
abline(v = 0.68, lty=3)
mtext(side=1, text = expression(bar(P)), line = 0.5, adj= 0.585)

points(x = 0, y = 0.5, cex=1.5, pch="*") #受容価格
abline(v = 0, lty=3)
mtext(side=1, text = expression(tilde(P)), line = 0.5, adj= 0.5)

points(x = -0.32, y = 0.04, cex=1.5, pch="*") #最適価格
abline(v= -0.32, lty=3)
mtext(side=1, text = "P*", line = 0.5, adj= 0.47)

#13.5節 NMS型概要図
x <- seq(-4, 4, 0.05)

plot(x,dnorm(x, mean=0, sd=0.4), type="n", xlab = "Price", ylab = "Freq", xaxt="n", yaxt="n")
curve(pnorm(x, mean=0, sd=0.8), type="l", lty=3, col = "blue", lwd = 2, add=T) #安いと感じない人
text(-3, 0.1, "Expensive", cex = 1.3, col = "blue")

curve( 1- pnorm(x, mean=0, sd=0.8), type="l", lty=3, col = "red",  lwd = 2, add=T) #高いと感じない人
text(3, 0.1, "Cheap", cex = 1.3, col = "red")

curve(pnorm(x, mean=1.5, sd=1), type="l", lty=1, col = "blue", add=T) #高すぎる
text(3.3, 0.7, "Too expensive", cex = 1.3, col = "blue")

curve( 1- pnorm(x, mean=-1, sd=0.4), type="l", lty=1, col = "red", add=T) #安すぎる
text(-3, 0.9, "Too cheap", cex = 1.3, col = "red")

points(x = -0.68, y = 0.2, cex=1.5, pch="*") #最低価格
abline(v = -0.68, lty=3)
mtext(side=1, text = expression(underline(P)), line = 0.5, adj= 0.42)

points(x = 0.68, y = 0.2, cex=1.5, pch="*") #最高価格
abline(v = 0.68, lty=3)
mtext(side=1, text = expression(bar(P)), line = 0.5, adj= 0.585)

points(x = 0, y = 0.5, cex=1.5, pch="*") #受容価格
abline(v = 0, lty=3)
mtext(side=1, text = expression(tilde(P)), line = 0.5, adj= 0.5)

points(x = -0.32, y = 0.04, cex=1.5, pch="*") #最適価格
abline(v= -0.32, lty=3)
mtext(side=1, text = "P*", line = 0.5, adj= 0.47)

