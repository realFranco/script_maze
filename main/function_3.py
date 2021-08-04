"""
Entry point for this "fake" application.
"""
from utils import Utils


stage = 'solar-system-data'
out = Utils.return_csv(stage=stage)
# out = 'Hello World 3'

# print(f'composing data for the data segment: "{stage}"\n\n{out}')
print(out)
