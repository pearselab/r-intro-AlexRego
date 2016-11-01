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

# 11  - I made this randomly sample input text because I thought that would be more interesting, and also because it was a more immediately obvious solution. Will probably fix later.

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
