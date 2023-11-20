include .env
export

server:
	poetry run litellm --model palm/chat-bison


test:
	poetry run litellm --test


# Open the OpenAPI docs.
docs:
	@open http://localhost:8000/
