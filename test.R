library(MASS) #加载MASS包
library(ggplot2)
library(plot3D)
pmar <- par(mar = c(10, 10, 10, 10)) 
mean <- c(2, 1, 3) #指定均值向量
sigma <- matrix(c(1, 0,0, 0, 1, 0, 0, 0, 1), nrow=3, ncol=3) #指定协方差矩阵 # nolint
mydata <- mvrnorm(1000, mean, sigma) #生成1000个三元正态分布的随机数：1000行乘以3列的 # nolint
mydata <- as.data.frame(mydata)
names(mydata) <- c("x",'y','z')
head(mydata['x'])

#plot(density(mydata))

#persp(mydata)
#gridplot_grid()
x <- mydata['x']
y <- mydata['y']
z <- mydata['z']
head(x)
head(y)
head(z)
#persp(x, y, z)
with(mydata, scatter3D(x , y , z  ,
  pch = 21, cex = 1.5,col="black",bg="#F57446",
                   xlab = "x",
                   ylab = "y",
                   zlab = "z", 
                   ticktype = "detailed",bty = "f",box = TRUE,
                   theta = 60, phi = 20, d=3,
                   colkey = FALSE)
)
# c1 <- ggplot(mydata, aes(x = x, y = y)) 
# c1 + geom_area()