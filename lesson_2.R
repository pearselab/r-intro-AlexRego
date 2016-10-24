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

# 7 - Work In Progress
pop.graph <- function(a,b,c,t){
  time <- seq(0,t,.1)
  colors <- rep("black",length(time))
  colors[pop.size.gomp(a,b,c,time) > a] <- "blue"
  colors[pop.size.gomp(a,b,c,time) > b] <- "red"
  plot(time, pop.size.gomp(a,b,c,time),type='l',xlab="Time",ylab="Ne",
  main="Gompertz Population Growth over Time", col = colors)
}
