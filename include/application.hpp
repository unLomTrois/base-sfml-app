#ifndef APP_H
#define APP_H

#include <SFML/Graphics.hpp>
#include <SFML/Window/Window.hpp>

#include <string>


class Application {
public:
	Application(const std::string& name, int fps_limit, int width, int height);
	~Application();
	
	void eventHandler(const sf::Event &event);

	void show();
	
private:
	const std::string NAME;
	const int FPS_LIMIT;

	sf::RenderWindow *window;
};


#endif // APP_H