# C++ Minecraft Clone


## Dependencies

### SFML

To Install it in Ubuntu first you run following command in your terminal -

sudo apt-get install libsfml-dev

make sure you already have compiler (GCC) and make if not then install it using

sudo apt-get install build-essential

Then to test this out create a simple SFML app like this

```C++
#include <SFML/Graphics.hpp>

int main(int argc, char const *argv[])
{
    sf::RenderWindow window(sf::VideoMode(200,200), "Hello From SFML");
    sf::CircleShape shape(100.f);
    shape.setFillColor(sf::Color::Magenta);

    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if(event.type == sf::Event::Closed){
                window.close();
            }
        }
        window.clear();
        window.draw(shape);
        window.display();
        
    }

    return 0;
}
```

Now create a makefile in the repo same as main.cpp

```Makefile
compile:./main.cpp
    g++ -c ./main.cpp
    g++ main.o -o app -lsfml-graphics -lsfml-window -lsfml-system

run:
    ./app
```

now to compile it run the following command

make compile

and finally to run this run following command

make run

