create_circle <- function(radius){
  structure(list(r = radius), class = "circle")
}
create_triangle <- function(face_a, face_b, face_c){
  structure(list(a = face_a, b = face_b, c = face_c), class = "triangle")
}
create_rectangle <- function(face_a, face_b){
  structure(list(a = face_a, b = face_b), class = "rectangle")
}

area <- function(x){
  UseMethod("area")
}
area.default <- function(x){
  cat("Неизвестный тип фигуры\n")
  return(NA)
} 
area.circle <- function(x){
  S <- pi * x$r^2
  cat("Площадь круга: ", round(S, 1), "\n")
  return(S)
}
area.triangle <- function(x){
  p <- (x$a + x$b + x$c) / 2
  S <- (p * (p - x$a) * (p - x$b) * (p - x$c)) ^ (1/2)
  cat ("Площадь триугольника: ",  S, "\n")
}
area.rectangle <- function(x){
  S <- x$a * x$b
  cat("Плозадь прямоугольника: ", S, "\n")
}

circle_1 <- create_circle(5)
triangle_1 <- create_triangle(5, 5, 5)
rectangle_1 <- create_rectangle(5, 5)
area(triangle_1)
area(circle_1)
area(rectangle_1)