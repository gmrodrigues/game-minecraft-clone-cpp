
all: clean compile run

compile: ./src/main.cpp
	g++ -g ./src/main.cpp  -o ./bin/minecraft_cpp -lsfml-graphics -lsfml-window -lsfml-system -lsfml-network -lsfml-audio

run: ./bin/minecraft_cpp
	./bin/minecraft_cpp

clean:
	rm ./bin/minecraft_cpp
