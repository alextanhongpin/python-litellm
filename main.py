# Ensure PALM_API_KEY is set in your environment.
from litellm import completion
from dotenv import load_dotenv

load_dotenv()  # take environment variables from .env.
response = completion(
    model="palm/chat-bison",
    messages=[
        {"role": "user", "content": "Write code for saying hi to the world in Python."}
    ],
    stream=True,
)

for chunk in response:
    print(chunk)
