# Usar una imagen base de Nginx
FROM nginx:latest

# Eliminar cualquier contenido por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copiar el archivo HTML al contenedor
COPY index.html /usr/share/nginx/html/

# Exponer el puerto 80 para acceder a la página
EXPOSE 80
