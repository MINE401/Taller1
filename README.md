# Taller1
Entrega taller 1 MINE401 - Ciencia de datos aplicada


## Autor(es):
- Juan Carlos Cepeda Valero
- José Daniel Molano Hoyos

## Objetivo
Este repositorio es la evidencia de la ejecución del Taller 1, de la materia MINE401 - Ciencia de datos aplicada, de la Universidad de los Andes en el segundo periodo del 2025. Dentro de este taller llevaremos a cabo el siguiente caso de negocio:
Como consultor científico de datos especializado en el sector hotelero, su objetivo es ayudar a cadenas de hoteles a optimizar sus estrategias de ocupación. Con el aumento de la competencia y la variabilidad en la demanda, cada vez resulta más complejo tomar decisiones acertadas respecto a la política de precios, la gestión de cancelaciones y la anticipación de las reservas para garantizar ingresos sostenibles en el tiempo. Una vez que un cliente realiza una reserva, entender los factores que determinan la duración de la estadía, la probabilidad de cancelación y la influencia de características como el tipo de hotel, la composición del grupo de huéspedes o el canal de reservación es vital para el éxito del negocio.

## Alcance
Con la información suministrada en el data set reservas y atendiendo al siguiente diccionario de datos, seleccionaremos un grupo de herramientas estadisticas con el fin de asesorar a las cadenas hoteleras y las ejecutaremos con el fin de entegar insigths relevantes para la definición de una estrategia. Esta estrategia fue desarrollada en el siguiente Jupyter Notebook.

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


