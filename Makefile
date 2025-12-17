# Компілятор та прапорці
CXX = g++
CXXFLAGS = -Wall -g

# Ціль за замовчуванням
all: calculator_app

# 1. Створюємо виконуваний файл (лінкуємо main.o з нашою бібліотекою)
# -L. означає "шукати бібліотеки в цій папці"
# -lcalculator означає "шукати файл libcalculator.a"
calculator_app: main.o libcalculator.a
	$(CXX) $(CXXFLAGS) -o calculator_app main.o -L. -lcalculator

# 2. Створюємо статичну бібліотеку
# ar (archiver) збирає об'єктні файли в архів .a
libcalculator.a: calculator.o
	ar rcs libcalculator.a calculator.o

# Компіляція окремих файлів у об'єктні (.o)
main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp

# Очищення (видаляє все скомпільоване)
clean:
	rm -f *.o *.a calculator_app
