NAME	= inception


all		:	
			cd srcs && docker-compose up
			@echo composed up

build	:	
			cd srcs && docker-compose build
			@echo built
re		: 
			cd srcs && docker-compose up --build
			@echo rebuilt and restarted

down	:	
			cd srcs && docker-compose down
			@echo composed down


$(NAME) : all