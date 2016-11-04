## what even
# 1
new.cat <- function(cool, fat,...){
  output <- list(cool=cool, fat=fat)
  class(output) <- "cat"
  return(output)
}
garfield <- new.cat('hella', 25)
tonks <- new.cat('pretty', 5)

print.cat <- function(x, ...){
  cat("This cat is", x$cool, "cool.")
}

race <- function(first, second){
  if(!inherits(first, "cat") |  !inherits(second, "cat"))
    stop("Bruh, these ain't cats")
  if(first$fat =< second$fat){
    print("Neither cat wins. Have you ever tried to race cats?")
  } else{
    print("Both cats bathe in a beam of sunlight. The audience is disappointed.")
  }
}

# 2
new.point <- function(x,y,...){
  output <- list(x=x,y=y)
  class(output) <- 'point'
  return(output)
}

first <- new.point(0,0)
second <- new.point(6,9)
third <- new.point(0,18)
print.point <- function(point, ...){
  cat("The coordinates for this point are","(",point$x,",", point$y,")")
}

# 3
point.dist <- function(first, second){
  if(!inherits(first,'point') | !inherits(second,'point')){
    stop("Points not given")}
  dist <- sqrt((first$x-second$x)**2 + (first$y-second$y)**2)
  return(dist)
}

#4
new.line <- function(first,second,...){
  if(!inherits(first, 'point') | !inherits(second, 'point')) {
    stop("Points not given")
  }
  output <- list(point1 = first,point2 = second)
  # x1 <- first$x; x2 <- second$x; y1 <- first$y; y2 <- second$y
  # plot(NA, xlim=c(0, 20), ylim=c(0, 20), xlab="x", ylab="y")
  # segments(x1,y1,x2,y2)
  # output <- recordPlot()
  class(output) <- "line"
  return(output)
}
line <- new.line(first,second)

#5
new.polygon <- function(first,second,third,...){
  if(!inherits(first, 'point') | !inherits(second, 'point') | !inherits(third, 'point')){
    stop("Points not given")
  }
  output <- list(point1 = first, point2 = second, point3 = third)
  class(output) <- "polygon"
  return(output)
}
polygon <- new.polygon(first,second,third)

#6
grapher.line <- function(input,...){
  plot(NA, xlim=c(-20,20), ylim=c(-20, 20), xlab="x", ylab="y")
  if(inherits(input, 'line')){
      segments(x0 = input[1]$point1[1]$x, y0 = input[1]$point1[2]$y,
        x1= input[2]$point2[1]$x, y1= input[2]$point2[2]$y)
  }
}

# 7
grapher.poly <- function(input,...){
  plot(NA, xlim=c(-20,20), ylim=c(-20, 20), xlab="x", ylab="y")
  if(inherits(input, 'polygon')){
      segments(x0 = input[1]$point1[1]$x, y0 = input[1]$point1[2]$y,
        x1= input[2]$point2[1]$x, y1= input[2]$point2[2]$y)
      segments(x0 = input[2]$point2[1]$x, y0 = input[2]$point2[2]$y,
        x1= input[3]$point3[1]$x, y1= input[3]$point3[2]$y)
      segments(x0 = input[1]$point1[1]$x, y0 = input[1]$point1[2]$y,
        x1= input[3]$point3[1]$x, y1= input[3]$point3[2]$y)
  }
}

# 8
## plot circumference
#a;lsdkf;
