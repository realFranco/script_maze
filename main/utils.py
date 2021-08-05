"""
Set of utility functions.
"""

class Utils():

    @staticmethod
    def return_csv(stage : str):
        out, keys, values = '', '' ,''

        # Compose data under diff. scenarios
        if stage == 'country-data':
            keys = 'name, country, hobby'
            values = [
                ['Jhon Doe', 'Belgium', 'Ping Pong'],
                ['Jhane Doe', 'Italy', 'Dancing'],
                ['Jack Doe', 'UK', 'Soccer']
            ]

        elif stage == 'botanic-data':
            keys = 'name, color, type, places'
            values = [
                ['cactus', 'green', 'dangerus', 'america'],
                ['watermeloon', 'light green', 'fruit', 'south america'],
                ['strawberry', 'red', 'fruit', 'worldwide']
            ]

        elif stage == 'solar-system-data':
            keys = 'name, approach-to-sun'
            values = [
                ['venus', '10 m km'],
                ['earth', '11 m km'],
                ['mars', '11 m km'],
                ['jupiter', '20 m km'],
                ['saturn', '22 m km'],
                ['venus', '23 m km'],
                ['uranos', '23 m km'],
                ['neptune', '25 m km']
            ]

        else:
            # random data
            keys = 'key1, key2, key3, key4'
            values = [
                ['a', 'b', 'c', 'd'],
                ['a', 'b', 'c', 'd'],
                ['a', 'b', 'c', 'd'],
                ['a', 'b', 'c', 'd'],
                ['a', 'b', 'c', 'd'],
                ['a', 'b', 'c', 'd']
            ]

        for row in values:
            line = ', '.join(row)
            out = out + line + '\n'

        # out = out[:-1] # Avoid the last blank line
        # adding a post fix for the keys: key -> key_py
        keys = keys.split(', ')
        keys = [f'{row}_py' for row in keys]
        keys = ', '.join(keys)
        out = keys + '\n' + out

        # print(f'[DEBUG] CSV output: {out}\n')
        return out


if __name__ == '__main__':
    # Running the default scenario
    stage = ''
    out = Utils.return_csv(stage=stage)

    # print(f'composing data for the data segment: "{stage}"\n\n{out}')
    print(out)