# Taller1

Entrega taller 1 MINE401 - Ciencia de datos aplicada

## Autor(es):

- Juan Carlos Cepeda Valero
- José Daniel Molano Hoyos

## Objetivo

Este repositorio es la evidencia de la ejecución del Taller 1, de la materia MINE401 - Ciencia de datos aplicada, de la Universidad de los Andes en el segundo periodo del 2025. Dentro de este taller llevaremos a cabo el siguiente caso de negocio:

> Como consultor científico de datos especializado en el sector hotelero, su objetivo es ayudar a cadenas de hoteles a optimizar sus estrategias de ocupación. Con el aumento de la competencia y la variabilidad en la demanda, cada vez resulta más complejo tomar decisiones acertadas respecto a la política de precios, la gestión de cancelaciones y la anticipación de las reservas para garantizar ingresos sostenibles en el tiempo. Una vez que un cliente realiza una reserva, entender los factores que determinan la duración de la estadía, la probabilidad de cancelación y la influencia de características como el tipo de hotel, la composición del grupo de huéspedes o el canal de reservación es vital para el éxito del negocio.

## Alcance

Con la información suministrada en el [data set reservas](data/hotel.csv) y atendiendo al siguiente [diccionario de datos](data/HotelBookingsDemandDataDictionary.xlsx), seleccionaremos un grupo de herramientas estadisticas con el fin de asesorar a las cadenas hoteleras y las ejecutaremos con el fin de entegar insigths relevantes para la definición de una estrategia. Esta estrategia fue desarrollada en el siguiente [Jupyter Notebook](Taller1.ipynb).

Dentro del notebook, estan claramente númeradas las 4 fases que se llevaron a cabo para resolver el ejercicio, sin embargo como resumen de cada uno de los pasos se deja también a disposición el [documento de resumen](DescripcionPasosReporte.md).

## Conclusiones

El análisis estadístico mostró que variables como el tipo de hotel, el tiempo de anticipación a la reserva y el mes de llegada están asociadas de manera significativa con la probabilidad de cancelación. En particular, los hoteles tipo resort concentran la mayor parte de las reservas y presentan diferencias claras frente a los hoteles de ciudad, lo que sugiere la necesidad de diseñar políticas de gestión diferenciadas para cada perfil de cliente. Asimismo, la dependencia encontrada con el canal de reserva, dominado por agencias de viaje online, indica que este medio es clave no solo para la captación de clientes, sino también como fuente de cancelaciones, por lo que se recomienda fortalecer estrategias digitales y, al mismo tiempo, diversificar otros canales de distribución.

Por otro lado, el contraste de tarifas (adr) entre reservas canceladas y no canceladas evidenció diferencias estadísticamente significativas, lo que confirma que los precios influyen en el comportamiento de los clientes. Esto implica que la política de precios debe ajustarse con mayor flexibilidad, incorporando estrategias como tarifas dinámicas según temporada o beneficios adicionales en rangos de precio más altos para reducir la propensión a cancelar. Además, el análisis del tiempo de antelación mostró que las reservas canceladas se concentran en las de largo plazo lo que sugiere implementar programas de fidelización para clientes que reservan con mucha anticipación.

En conclusión, la cadena hotelera debería implementar una estrategia integral que combine tres frentes: ajustar sus políticas de precios con esquemas dinámicos que equilibren competitividad y reducción de cancelaciones; fortalecer la gestión de canales digitales, optimizando la relación con agencias online pero también promoviendo la venta directa para disminuir la dependencia; y diferenciar sus acciones según el tipo de hotel y la anticipación de la reserva, aplicando programas de fidelización y beneficios para quienes reservan con tiempo. De esta forma se podrá reducir la tasa de cancelaciones, estabilizar los ingresos y mejorar la ocupación en ambos tipos de hoteles.

## Ejecutar el notebook `Taller1.ipynb`

Sigue estos pasos para ejecutar el notebook de forma interactiva o automática.

1) Instrucciones para preparar el ambiente de ejecución del notebook
   Para recrear el environment desde `environment.yml`:

```bash
conda env create -f environment.yml
```

O, si prefieres usar `pip` y un virtualenv:

```bash
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

2) Ejecutar de forma interactiva (Jupyter Notebook o JupyterLab)

```bash
# Instala jupyter si no está disponible
conda install -n <nombre_del_env> jupyterlab -y
conda install -n jupyter jupyterlab -y
# Lanzar JupyterLab (abre en el navegador)
jupyter lab
# O usar el clásico notebook
jupyter notebook
```

3) Ejecutar el notebook por línea de comando (sin abrir UI)

Opción A — Usando `nbconvert` (incluido con Jupyter):

```bash
# Ejecuta todas las celdas y guarda el notebook ejecutado
jupyter nbconvert --to notebook --execute Taller1.ipynb --output executed_Taller1.ipynb
```

Opción B — Usando `papermill` (útil para parametrizar notebooks):

```bash
# instalar papermill si no está en el environment
pip install papermill
# ejecutar y guardar salida
papermill Taller1.ipynb output_Taller1.ipynb
```

Notas y recomendaciones:

- Si el notebook necesita paquetes que solo existen en conda, recrea el environment con `environment.yml`.
- Para ejecuciones automáticas programadas (CI), prefiero `papermill` o `jupyter nbconvert --execute` con control de timeouts.
- Si ves errores de importación, confirma que activaste el environment correcto (`which python` y `which jupyter` deben apuntar al environment activado).
