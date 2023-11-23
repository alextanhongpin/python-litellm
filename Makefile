include .env
export

palm:
	poetry run litellm --model palm/chat-bison --debug --add_function_to_prompt --drop_params --request_timeout 10000 --debug --max_tokens 8000 --telemetry False


cohere:
	poetry run litellm --model command-nightly --debug --add_function_to_prompt --drop_params --request_timeout 10000 --debug --telemetry False

test:
	poetry run litellm --test


# Open the OpenAPI docs.
docs:
	@open http://localhost:8000/
