import csfml

var window = newWindowBase(videoMode(800, 600), "SFML Base works!")

while window.open:
  var event: Event
  while window.waitEvent event:
    if event.kind == EventType.Closed:
      window.close()
  #window.display()

window.destroy()


#[
// Declare and create a new window

#include <SFML/Graphics.hpp>

int main(int argc, char** argv) {

    sf::WindowBase window(sf::VideoMode(800, 600), "SFML window");

// The main loop - ends as soon as the window is closed
    while (window.isOpen()) {
        // Event processing
        sf::Event event;
        while (window.pollEvent(event)) {
            // Request for closing the window
            if (event.type == sf::Event::Closed)
                window.close();
        }

        // Do things with the window here...
    }
    return 0;
}
]#