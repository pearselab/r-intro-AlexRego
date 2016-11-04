## Exercises

# 1
for(i in 20:10){
  print(i)
}

# 2
for(i in 20:10){
  if(i%%2 == 0){
    print(i)
  }
}

# 3
is.prime <- function(x){
  if(x<2){
    return(FALSE)
  } else{
    if(x == 2){
    return(TRUE)
      } else{
          for(d in (2:sqrt(x)+1)){
            if(x%%d == 0){
              return(FALSE)
                } else{
                  return(TRUE)
        }
      }
    }
  }
}

# 4
for(i in 1:20){
  if(i %% 5 == 0){
    print(c("Good:", i))
  } else{
      if(is.prime(i)){
        print(c("Job:", i))
    }
  }
}

# 5
pop.size.gomp <- function(a,b,c,t){
  return(a*exp(-b*exp(-c*t)))
}

# 6
pop.graph <- function(a,b,c,t){
  time <- seq(0,t,.1)
  plot(time, pop.size.gomp(a,b,c,time),type='l',xlab="Time",ylab="Ne",
  main="Gompertz Population Growth over Time")
}

# 7
pop.graph <- function(a,b,c,t){
  time <- seq(0,t,.1)
  colors <- rep("black",length(time))
  colors[pop.size.gomp(a,b,c,time) > a] <- "blue"
  colors[pop.size.gomp(a,b,c,time) > b] <- "red"
  plot(time, pop.size.gomp(a,b,c,time),type='l',xlab="Time",ylab="Ne",
  main="Gompertz Population Growth over Time", col = colors)
}

# 8
pop.graph <- function(a,b,c,t){
  time <- seq(0,t,.1)
  colors <- rep("black",length(time))
  colors[pop.size.gomp(a,b,c,time) > a & pop.size.gomp(a,b,c,time) > b] <- "purple"
  plot(time, pop.size.gomp(a,b,c,time),type='l',xlab="Time",ylab="Ne",
  main="Gompertz Population Growth over Time", col = colors)
}

# 9
bocks <- function(height,width){
  for(i in 1:width){
    cat('*')
  }
    cat('\n')
  for(j in 1:(height-2)){
    cat('*',rep('',width-3), '*', '\n')
  }
  for(i in 1:width){
    cat('*')
  }
}

# 10
textbocks <- function(height,width,text){
  for(i in 1:width){
    cat('*')
  }
    cat('\n')
  for(j in 1:((height/2)-1.5)){
    cat('*',rep('',width-3), '*', '\n')
  }
  cat('*', text, '*','\n')
  for(j in 1:((height/2)-1)){
    cat('*',rep('',width-3), '*', '\n')
  }
  for(i in 1:width){
    cat('*')
  }
  cat('\n')
}
test.text <- "I have come here to chew bubblegum and kick ass... and I'm all out of bubblegum"
textbocks(10,83,test.text)

# 11  

randtextbocks <- function(input,height,width,text){
  samp <- strsplit(input,'')[[1]]
  for(i in 1:width){
    cat(sample(samp,1))
  }
    cat('\n')
  for(j in 1:((height/2)-1.5)){
    cat(sample(samp,1),rep('',width-3), sample(samp,1), '\n')
  }
  cat(sample(samp,1), text, sample(samp,1),'\n')
  for(j in 1:((height/2)-1)){
    cat(sample(samp,1),rep('',width-3), sample(samp,1), '\n')
  }
  for(i in 1:width){
    cat(sample(samp,1))
  }
  cat('\n')
}

# 12 - n = num of sites, p = prob. of species being at site, l = average abundance if present
abundance <- function(n,p,l){
  a <- rbinom(n, 1, p)
  b <- rpois(n,l)
  return(a*b)
}

# 13
abundance <- function(sites,species){
  M <- matrix(NA, nrow=species, ncol=sites)
  for(i in 1:species){
    prob <- runif(1,0,1)
    lambda <- runif(1,1,100)
    a <- rbinom(sites, 1, prob)
    b <- rpois(sites,lambda)
    s <- a*b
    M[i,] <- c(s)
  }
  return(t(M))
}

# 14
lost <- function(n){
  count <- 0
  time <- 0
  x <- c(0)
  y <- c(0)
  dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
  while(count <= n){
    plot(x,y, xlim=c(-500,500), ylim=c(-500,500),type='l', lty=5, main=c('Distance from center', dist))
    x[length(x)+1] <- (x[length(x)] + rnorm(1,0,1))
    y[length(y)+1] <- (y[length(y)] + rnorm(1,0,1))
    dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
    time <- time + 5
    count <- count + 1
  }
}
# 15
plummet <- function(){
  time <- 0
  x <- 0
  y <- 0
  while(time >= 0){
    x <- x + rnorm(1,0,1)
    y <- y + rnorm(1,0,1)
    d <- sqrt((x[length(x)]**2 + y[length(y)]**2))
    time <- time + 5
    if(d > 500){
      return(c('Hours until doom:', (time/3600)))
    }
  }
}

# 16
plummet <- function(alpha){
  time <- 0
  x <- 0
  y <- 0
  dist <-.01
  while(time >= 0){
    x[length(x)+1] <- (x[length(x)] + rnorm(1,0,1)*(1/(alpha*dist)))
    y[length(y)+1] <- (y[length(y)] + rnorm(1,0,1)*(1/(alpha*dist)))
    dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
    time <- time + 5
    if(dist >= 500){
      return(c('Hours until doom:', (time/3600)))
    }
  }
}

lost <- function(n,alpha){
  count <- 0
  time <- 0
  x <- c(0)
  y <- c(0)
  dist <- 1
  while(count <= n){
    plot(x,y, xlim=c(-500,500), ylim=c(-500,500),type='l', lty=5, main=sqrt((x[length(x)]**2 + y[length(y)]**2)))
    x[length(x)+1] <- (x[length(x)] + rnorm(1,0,1)*(1/(alpha*dist)))
    y[length(y)+1] <- (y[length(y)] + rnorm(1,0,1)*(1/(alpha*dist)))
    time <- time + 5
    count <- count + 1
    dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
  }
}
# 17
## If faculty speeds up through time
lost <- function(n){
  count <- 0
  time <- 0
  x <- c(0)
  y <- c(0)
  dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
  while(time >= 0){
    plot(x,y, xlim=c(-500,500), ylim=c(-500,500),type='l', lty=5, main=c('Distance from center', dist))
    x[length(x)+1] <- (x[length(x)] + rnorm(1,0,(1+.001*time)))
    y[length(y)+1] <- (y[length(y)] + rnorm(1,0,1+.001*time))
    dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
    time <- time + 5
    count <- count + 1
    if(dist > 500 | count == n){
      return(time)
    }
  }
}

## If faculty slows over time
lost <- function(n){
  count <- 0
  time <- 0
  x <- c(0)
  y <- c(0)
  dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
  while(time >= 0){
    plot(x,y, xlim=c(-500,500), ylim=c(-500,500),type='l', lty=5, main=c('Distance from center', dist))
    x[length(x)+1] <- (x[length(x)] + rnorm(1,0,(1-.00001*time)))
    y[length(y)+1] <- (y[length(y)] + rnorm(1,0,(1-.00001*time)))
    dist <- sqrt((x[length(x)]**2 + y[length(y)]**2))
    time <- time + 5
    count <- count + 1
    if(dist > 500){
      return(time)
    } else{
    if(1-.00001*time == .00005 | count == n){
      return(dist)
      }
    }
  }
}
