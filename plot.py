import matplotlib.pyplot as plt
from data_pipeline import gather_graph_data

data = gather_graph_data()
x_values = [float(tupla[0]) for tupla in data]
y_values = [float(tupla[1]) for tupla in data]
plt.figure(num=None, figsize=(25, 6), dpi=80, facecolor='w', edgecolor='k')
plt.title('Gráfico Remuneración vs Edad', fontsize = 30)
plt.xticks([i for i in range(60)], fontsize=15)
plt.xlabel('Edad', fontsize=20)
plt.ylabel('Remuneración', fontsize=20, rotation=90)
plt.plot(x_values, y_values, scalex=True, scaley=True)
plt.savefig('graph1.png')

specific_data = [*filter(lambda x: 27 < x[0] < 33, data)]
sx_values = [float(tupla[0]) for tupla in specific_data]
sy_values = [float(tupla[1]) for tupla in specific_data]
plt.figure(num=None, figsize=(25, 6), dpi=80, facecolor='w', edgecolor='k')
plt.title('Gráfico Remuneración vs Edad (zoom)', fontsize = 30)
plt.xticks([i for i in range(60)], fontsize=15)
plt.xlabel('Edad', fontsize=20)
plt.ylabel('Remuneración', fontsize=20, rotation=90)
plt.plot(sx_values, sy_values, scalex=True, scaley=True)
plt.savefig('graph2.png')
