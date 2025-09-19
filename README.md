# Taller1
Entrega taller 1 MINE401 - Ciencia de datos aplicada

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


