include .env
export

server:
	poetry run litellm --model palm/chat-bison


test:
	poetry run litellm --test
