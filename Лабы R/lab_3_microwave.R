library("R6")
Microwave <- R6Class(
  "Microwave",
  private = list(
    vatt = 200,
    door = TRUE
  ),
  public = list(
    initialize = function(vatt, door) {
      if(!missing(vatt)) {
        private$vatt <- vatt
      }
      if(!missing(door)) {
        private$door <- door
      }
    },
    open_door = function(){
      private$door <- TRUE
    },
    close_door = function(){
      private$door<- FALSE
    },
    cook = function(){
      if(private$door == TRUE){
        print("Перед началом готовки закройте дверь!")
        return(NA)
      }
      cat("Время ожидания готовки:", 1000/private$vatt, "\n")
      Sys.sleep(8000/private$vatt)
      print("Приготовлено")
    }
  )
)
microwave1 = Microwave$new()
microwave2 = Microwave$new(
  vatt = 1000,
  door = FALSE
)
microwave1$cook()
microwave1$close_door()
microwave1$cook()
microwave2$cook()
print(microwave1)