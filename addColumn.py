import pandas as pd

csvInput = pd.read_csv('./Resources/data100mil.csv')
csvInput['Rol'] = "Cliente"
csvInput.to_csv('./Resources/data100mil.csv')