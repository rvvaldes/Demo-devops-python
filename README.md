**El pipeline de GitHub Actions realiza las siguientes tareas**:

1. **Build y Validación del Código**:
   - Verifica que el código de la aplicación sea válido y que cumpla con los estándares de calidad.
   - Instala las dependencias de Python y ejecuta una serie de comprobaciones, como migraciones de base de datos y verificaciones de código Django.

2. **Pruebas Unitarias**:
   - Ejecuta pruebas unitarias para asegurarse de que las funciones y características de la aplicación funcionen como se espera.

3. **Análisis de Código Estático**:
   - Utiliza la herramienta Flake8 para realizar un análisis estático del código Python y garantizar que cumpla con las convenciones de estilo y las mejores prácticas de codificación.

4. **Escaneo de Vulnerabilidades**:
   - Utiliza la herramienta Bandit para realizar un escaneo de seguridad en busca de posibles vulnerabilidades en el código Python.

5. **Construcción y Despliegue de la Imagen Docker**:
   - Construye una imagen Docker utilizando un Dockerfile en el directorio raíz del repositorio.
   - Inicia sesión en un registro de contenedores (en este caso, Docker Hub) utilizando credenciales almacenadas como secretos en GitHub.
   - Construye y hace push de la imagen Docker al registro de contenedores especificado.

6. **Despliegue en el Cluster de Kubernetes**:
   - Utiliza `kubectl` para aplicar los archivos de manifiesto Kubernetes que definen los recursos de la aplicación.
   - La acción de despliegue utiliza un archivo kubeconfig almacenado en GitHub Secrets para autenticarse con el clúster de Kubernetes.

7. **URL de la aplicación**:
    - http://165.227.250.193/api/users/