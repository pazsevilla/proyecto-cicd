# Usamos una imagen liviana oficial de Python
FROM python:3.10-slim

# Seteamos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo de dependencias primero (buena práctica para cachear capas)
COPY requirements.txt .

# Instalamos las dependencias (si las hubiera en el archivo)
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos todo el código del proyecto al contenedor
COPY . .

# Comando por defecto: correr los tests cuando se levante el contenedor
CMD ["python", "-m", "unittest", "discover", "-s", ".", "-p", "test_*.py"]
