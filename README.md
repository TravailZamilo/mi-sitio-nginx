
# Proyecto Docker + Kubernetes - Mi Sitio Web Nginx

## Descripción

Este proyecto tiene como objetivo mostrar cómo crear, subir y desplegar una aplicación web simple utilizando Docker y Kubernetes. Se construyó una imagen de Docker con un sitio web básico (index.html), que luego fue desplegada en un clúster de Kubernetes. 

Este ejercicio fue una excelente oportunidad para aprender a integrar estas tecnologías y aplicar el flujo completo, desde el desarrollo local hasta el despliegue en Kubernetes.

## Tecnologías Utilizadas

- **Docker** 🐳: Para crear la imagen del sitio web.
- **Kubernetes** ☸️: Para gestionar y desplegar la aplicación.
- **Nginx** 🌐: Servidor web utilizado en la imagen Docker.
- **GitHub**: Para gestionar el código fuente y facilitar la colaboración.
- **Docker Hub**: Para almacenar la imagen de Docker y facilitar su distribución.

## Instrucciones de Uso

1. **Clona el repositorio**:

   ```bash
   git clone https://github.com/TravailZamilo/mi-sitio-nginx.git
   cd mi-sitio-nginx
   ```

2. **Crea la imagen de Docker**:

   Asegúrate de tener Docker instalado y ejecuta el siguiente comando para crear la imagen de Docker:

   ```bash
   docker build -t tuusuario/mi-sitio-nginx .
   ```

3. **Sube la imagen a Docker Hub**:

   Si aún no has iniciado sesión en Docker Hub, hazlo con el comando:

   ```bash
   docker login
   ```

   Luego, sube la imagen con el siguiente comando:

   ```bash
   docker push tuusuario/mi-sitio-nginx
   ```

4. **Desplegar en Kubernetes**:

   Asegúrate de tener Kubernetes y `kubectl` instalados y configurados. Para desplegar la aplicación, usa el siguiente comando:

   ```bash
   kubectl apply -f nginx-deployment.yaml
   ```

5. **Verifica el despliegue**:

   Para verificar que el despliegue se realizó correctamente, puedes ejecutar:

   ```bash
   kubectl get deployments
   kubectl get services
   ```

6. **Exponer el servicio localmente**:

   Utiliza el siguiente comando para exponer el servicio en tu localhost:

   ```bash
   kubectl port-forward service/mi-sitio-service 8080:80
   ```

   Ahora podrás ver tu sitio web en `http://localhost:8080` desde tu navegador.

## Requisitos Previos

- **Docker**: Necesitas tener Docker instalado para crear y subir la imagen.
- **Kubernetes**: Debes tener un clúster de Kubernetes y `kubectl` configurado para desplegar la aplicación.

## Comandos Clave

1. Inicializar el repositorio y hacer el primer commit:

   ```bash
   git init
   git add .
   git commit -m "Agrego Dockerfile, index.html y nginx-deployment.yaml"
   git remote add origin https://github.com/TuUsuario/mi-sitio-nginx.git
   git push -u origin master
   ```

2. Crear imagen de Docker y subirla a Docker Hub:

   ```bash
   docker build -t tuusuario/mi-sitio-nginx .
   docker push tuusuario/mi-sitio-nginx
   ```

3. Desplegar en Kubernetes:

   ```bash
   kubectl apply -f nginx-deployment.yaml
   kubectl get deployments
   kubectl get services
   ```

4. Ver la app localmente:

   ```bash
   kubectl port-forward service/mi-sitio-service 8080:80
   ```
