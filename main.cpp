#include"crow_all.h"
#include<iostream>

int main(int argc, char** argv){
	crow::SimpleApp app;


	CROW_ROUTE(app, "/")([](const crow::request& req, crow::response& res){
		std::ifstream in("templates/index.html", std::ifstream::in);
		if(in){
			std::ostringstream content;
			content <<in.rdbuf();
			in.close();
			res.write(content.str());
		}
		else{
			res.write("NotFound");
		}
		res.end();
	});

	CROW_ROUTE(app, "/sample/")([](){
		return "<div><h1> hello putas </h1></div>";
	});
	// char* port = getenv("PORT");
	// uint16_t iport = static_cast<uint16_t>(port!=NULL?std::stoi(port):8080);
	// std::cout<<"PORT: "<<iport<<"\n";
	app.port(8080).multithreaded().run();
	return 0;
}
