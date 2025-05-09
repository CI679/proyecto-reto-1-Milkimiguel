# Imagen base con Bash
FROM debian:latest

# Instala utilidades básicas
RUN apt-get update && apt-get install -y \
    bash \
    grep \
    sed \
    && rm -rf /var/lib/apt/lists/*

# Crea el directorio de trabajo
WORKDIR /app

# Copia todos los archivos del proyecto al contenedor
COPY . .

# Crea las carpetas necesarias si no existen
RUN mkdir -p Ag Trad

# Da permisos de ejecución al script principal
RUN chmod +x AvMenuPrin.sh

# Establece el script como punto de entrada, acepta argumentos al ejecutar docker run
ENTRYPOINT ["./AvMenuPrin.sh"]
