# Use a pipeline as a high-level helper
import sys
from transformers import pipeline

if len(sys.argv) < 2:
    print("Usage: python run_model.py meta-llama/Llama-2-7b-chat-hf")
    sys.exit(1)

model=sys.argv[1]

pipe = pipeline("text-generation", model=model)
results = pipe("What is the meaning of life?")
print(results)