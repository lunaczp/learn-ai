# Use a pipeline as a high-level helper
import sys
from transformers import pipeline

if len(sys.argv) < 3:
    print("Usage: python run_model.py meta-llama/Llama-2-7b-chat-hf user_msg")
    sys.exit(1)

model=sys.argv[1]
msg=sys.argv[2]

pipe = pipeline("text-generation", model=model)
results = pipe(msg, max_length=200, num_return_sequences=1)
print(results)