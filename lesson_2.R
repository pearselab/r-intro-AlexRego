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
