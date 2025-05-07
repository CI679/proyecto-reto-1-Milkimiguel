#Puntos a investigar de las metodologías
    #[Cuándo aplicar]
    #[Fase de requerimientos]
    #[Fase de diseño]
    #[Fase de implementación]
    #[Fase de pruebas]
    #[Fase de despliegue]
    #[Fase de mantenimiento]
    #[Ventajas]
    #[Desventajas]


#Menú principal de bandera
case $1 in
    -a )
        while true: do
        opc=""
            echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
                *SCRUM
                *XP (Programación Extrema)
                *Kanban
                *Crystal
                *Salir (presione 'x')"
    ;;
    -t ) 
        while true: do
        opc=""
            echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:
            *Cascada
            *Espiral
            *Modelo V
            *Salir (presione 'x')"
    ;;

    * )
        echo "Opcion no valida, intenta de nuevo, por favor"
    ;;
esac