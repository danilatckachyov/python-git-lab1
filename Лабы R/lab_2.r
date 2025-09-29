erors <- 0

while(erors < 3){
  cat("Введите название искомой фигуры (круг, треугольник, квадрат, прямоугольник, многоугольник)\n")
  
  vvod <- readline()
  
  if (erors == 3){
    cat ("Ну ты и дурак конечно...\n")
    break
  }
  
  if (vvod == "круг"){
    cat("Введите радиус круга: \n")
    circle_radius <- as.numeric(readline())
    circle_area <- pi * circle_radius * circle_radius
    cat("ПЛощадь круга: ", circle_area)
  }
  else if(vvod == "квадрат"){
    cat("Длина стороны квадрата: \n")
    square_side <- as.numeric(readline())
    square_area <- square_side * square_side
    cat("Площадь квадрата:", square_area)
  }
  else if(vvod == "треугольник"){
    cat ("Введите стороны треугольника: \n")
    triangle_a <- as.numeric(readline())
    triangle_b <- as.numeric(readline())
    triangle_c <- as.numeric(readline())
    triangle_p <- (triangle_a + triangle_b + triangle_c) / 2
    triangle_area <- (triangle_p * (triangle_p - triangle_a) * (triangle_p - triangle_b) * (triangle_p - triangle_c)) ** 1/2
    cat ("Площадь треугольника: ", triangle_area)
  }
  else if(vvod == "прямоугольника"){
    cat("Первая сторона прямоугольника: \n")
    rectangle_side1 <- as.numeric(readline())
    cat("Вторая сторона прямоугольника: \n")
    rectangle_side2 <- as.numeric(readline())
    rectangle_area <- rectangle_side1 * rectangle_side2
    cat("Площадь прямоугольника:\n", rectangle_area)
  }else if(vvod == "многоугольник"){
    cat ("Введите количество точек многоугольника")
    N <- as.integer(readline())
    
    points <- list()
    for (i in 1:N) {
      coords <- strsplit(readline(), " ")[[1]]
      x <- as.numeric(coords[1])
      y <- as.numeric(coords[2])
      points[[i]] <- c(x, y)
    }
    
    area <- 0
    for (i in 1:N) {
      x1 <- points[[i]][1]
      y1 <- points[[i]][2]
      
      next_index <- ifelse(i == N, 1, i + 1)
      x2 <- points[[next_index]][1]
      y2 <- points[[next_index]][2]
      
      area <- area + (x1 * y2 - x2 * y1)
    }
    
    area <- abs(area) / 2
    
    cat("Площадь",area, "\n")
  }
  else if (vvod != "круг"){
    cat("eblan\n")
    erors <- erors + 1
  }
}
  