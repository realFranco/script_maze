"""
Core functionality.
"""
from utils.utils import Utils


stage = 'botanic-data'
out = Utils.return_csv(stage=stage)

# print(f'composing data for the data segment: "{stage}"\n\n{out}')
print(out)