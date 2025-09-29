cat("Длина стороны квадрата: ")
square_side <- as.numeric(readline())
cat("Радиус круга: ")
circle_radius <- as.numeric(readline())
cat("Первая сторона прямоугольника: ")
rectangle_side1 <- as.numeric(readline())
cat("Вторая сторона прямоугольника: ")
rectangle_side2 <- as.numeric(readline())

square_area <- square_side * square_side

circle_area <- pi * circle_radius * circle_radius

rectangle_area <- rectangle_side1 * rectangle_side2

total_area <- square_area + circle_area + rectangle_area

cat("Площадь квадрата:", square_area, "\n")
cat("Площадь круга:", round(circle_area, 2), "\n")
cat("Площадь прямоугольника:", rectangle_area, "\n")
cat("Общая площадь:", round(total_area, 2), "\n")5
