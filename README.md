# Proyecto del primer parcial

Proyecto del primer parcial de la materia "Desarrollo basado en plataformas".

Este proyecto consiste en una aplicación desarrollada en Bash, diseñada como una herramienta educativa para aprender sobre distintas metodologías de desarrollo de software, tanto ágiles como tradicionales. 
El usuario puede seleccionar una categoría de metodologías mediante un parámetro al ejecutar el script y luego navegar por un submenú que permite agregar, buscar, eliminar y leer información relacionada con cada metodología.

## Empezando

Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para fines de desarrollo, educativos y pruebas.

### Requisitos previos
Para ejecutar este proyecto necesitas tener instalado:

```
- Bash
- Docker
- Git
```

### Instalación

Clona este repositorio en tu máquina local (asegúrate de tener en tu cuenta de github al menos una llave SSH en funcionamiento):

```
git clone git@github.com:CI679/proyecto-reto-1-Milkimiguel.git
```

Para ejecutar la aplicación de forma local:

```
bash AvMenuPrin.sh -a   # Para metodologías ágiles
bash AvMenuPrin.sh -t   # Para metodologías tradicionales
```

Para construir y ejecutar el contenedor Docker:

```
docker AvMenuPrin.sh -t metodologia-bash
docker AvMenuPrin.sh -it metodologia-bash
```

## Ejecutando las pruebas

Este proyecto no incluye pruebas automatizadas formales, pero puedes verificar su funcionamiento mediante pruebas manuales. A continuación se indican algunas pruebas recomendadas.

### Desglosar en pruebas de extremo a extremo

Ejemplo de prueba en metodologías ágiles:

```
1. Ejecutar: bash metodologia.sh -a
2. Seleccionar SCRUM
3. Agregar un concepto (agregar el identificador del concepto y su definición)
Por ejemplo: [sprint] .- Iteración del proyecto.
4. Leer base de información
5. Buscar "sprint"
6. Eliminar "sprint"
```
Después de ejecutar cualquier comando del submenú, es posible elegir una nueva opción, volver al menú anterior o terminar la ejecución.

### Pruebas de estilo de codificación

Este proyecto sigue una estructura modular en Bash, con validación básica de entrada y control de flujo estructurado. Asegúrate de:

```
- Usar comillas dobles para variables con espacios
- Comprobar existencia de archivos antes de operar
- Validar entradas
```

## Despliegue

El sistema está diseñado para ejecutarse fácilmente en contenedores Docker. El contenedor se encarga de iniciar automáticamente la aplicación al ejecutarse.

## Hecho con

```
* Bash versión 5.1.16 -Shell
* Docker versión 28.0.2 -Contenedores para empaquetado y despliegue
* Git versión 2.34.1 - Herramienta de control de versiones distribuido
```

## Contribuciones

Por el momento este proyecto es académico por lo que no se aceptan contribuciones externas.

## Versionamiento

```
v1.0 - Versión inicial del proyecto
```

## Autores

* **Miguel David Rodríguez González 343786** - *Colaborador* - [Milkimiguel](https://github.com/Milkimiguel)
* **Rebeca Portillo Saenzpardo 368094** - *Colaboradora* - [Rebeca434](https://github.com/Rebeca434)
* **Laura Cecilia Holguín Campos 360743** - *Colaboradora* - [CeciliaHC](https://github.com/CeciliaHC)
* **Ana Verónica Torres Torres 367812** - *Colaboradora* - [VeroTT2500](https://github.com/VeroTT2500)

## Licencia

Este proyecto está licenciado bajo la Licencia MIT - consulta el archivo LICENSE.md para más detalles.

## Agradecimientos

* Profesor Luis Antonio Ramírez Martínez
* [Documentación oficial de Bash](https://www.gnu.org/software/bash/manual/bash.html)
* [Documentación oficial de Docker](https://docs.docker.com/)
