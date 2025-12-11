# IMAGEN BASE
FROM python:3.11-slim
# INSTRUCCIONES
WORKDIR /app

RUN pip install psycopg2-binary

# Copiar el archivo de la aplicación
COPY app.py .

# Exponer el puerto 3000
EXPOSE 3000

# ENTRYPOINT
CMD ["python", "app.py"]