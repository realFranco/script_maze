"""
Core functionality.
"""
from utils import Utils


stage = 'botanic-data'
out = Utils.return_csv(stage=stage)
# out = 'Hello World 2'

# print(f'composing data for the data segment: "{stage}"\n\n{out}')
print(out)
