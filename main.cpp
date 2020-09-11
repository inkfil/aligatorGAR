#include"crow_all.h"
#include<iostream>

void sendFile(crow::response& res, std::string filename, std::string contentType){
	std::ifstream in("static/"+filename, std::ifstream::in);
	if(in){
		std::ostringstream content;
		content <<in.rdbuf();
		in.close();
		res.set_header("Content-Type", contentType);
		res.write(content.str());
	}
	else{
		res.code=404;
		res.write("NotFound");
	}
	res.end();
}

void sendHtml(crow::response& res, std::string filename){
	sendFile(res, "templates/"+filename, "text/html");

}

void sendImage(crow::response& res, std::string filename){
	sendFile(res, "images/"+filename, "image/jpeg");

}

void sendStyle(crow::response& res, std::string filename){
	sendFile(res, "css/"+filename, "text/css");

}

void sendScript(crow::response& res, std::string filename){
	sendFile(res, "js/"+filename, "text/javascript");

}

int main(int argc, char** argv){
	crow::SimpleApp app;


	CROW_ROUTE(app, "/")([](const crow::request& req, crow::response& res){
		sendHtml(res, "base.html");
	});

	CROW_ROUTE(app, "/css/<string>")([](const crow::request& req, crow::response& res, std::string filename){
		sendStyle(res, filename);
	});

	CROW_ROUTE(app, "/js/<string>")([](const crow::request& req, crow::response& res, std::string filename){
		sendScript(res, filename);
	});

	CROW_ROUTE(app, "/images/<string>")([](const crow::request& req, crow::response& res, std::string filename){
		sendImage(res, filename);
	});

	CROW_ROUTE(app, "sample/")([](){
		return "<div><h1> hello putas </h1></div>";
	});
	// char* port = getenv("PORT");
	// uint16_t iport = static_cast<uint16_t>(port!=NULL?std::stoi(port):8080);
	// std::cout<<"PORT: "<<iport<<"\n";
	app.port(8080).multithreaded().run();
	return 0;
}
