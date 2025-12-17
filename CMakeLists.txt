cmake_minimum_required(VERSION 3.10)

# Назва проєкту
project(CalculatorProject)

# 1. Створюємо статичну бібліотеку "calculator" з файлів джерел
add_library(calculator STATIC calculator.cpp calculator.h)

# 2. Створюємо виконуваний файл "calculator_app"
add_executable(calculator_app main.cpp)

# 3. Лінкуємо бібліотеку до виконуваного файлу
target_link_libraries(calculator_app calculator)
