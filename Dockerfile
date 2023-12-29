# Imagen base con Python
FROM python:3.9

# Establece un directorio para el código de la aplicación
WORKDIR /usr/src/app

# Instalar las dependencias
# Copia el archivo de requisitos y lo instala con pip
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia el contenido del directorio actual al contenedor en /usr/src/app
COPY . .

# Puerto en el que la aplicación estará disponible
EXPOSE 5000

# Comando para ejecutar la aplicación
# Asumiendo que es una aplicación Flask, si es Django o cualquier otro, ajusta el comando.
CMD ["python", "portfolio-app.py"]
