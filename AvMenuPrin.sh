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
echo "Bienvenido al Menú de Metodologías de Desarrollo de Software"
echo "Por favor seleccione una opción:
    *Metodologías Ágiles (presione 'a')
    *Metodologías Tradicionales (presione 't')
    *Salir (presione 'x')"
read -p "Opción: " main_opc
#Validación de la opción seleccionada

case $main_opc in
    a )
        while true; do
            echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:
                *SCRUM
                *XP (Programación Extrema)
                *Kanban
                *Crystal
                *Salir (presione 'x')"
            read -p "Tema: " opc

            case $opc in
                SCRUM )
                    echo "Has seleccionado SCRUM"
                    ./AvMenuAgil.inf -a SCRUM
                    ;;
                XP )
                    echo "Has seleccionado XP"
                    ./AvMenuAgil.inf -a XP
                    ;;
                Kanban )
                    echo "Has seleccionado Kanban"
                    ./AvMenuAgil.inf -a Kanban
                    ;;
                Crystal )
                    echo "Has seleccionado Crystal"
                    ./AvMenuAgil.inf -a Crystal
                    ;;
                x | X )
                    echo "Saliendo del programa..."
                    exit 0
                    ;;
                * )
                    echo "Opción no válida, intenta de nuevo, por favor"
                    ;;
            esac
        done

        ;;
    t ) 
        while true; do
            echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:
            *Cascada
            *Espiral
            *Modelo V
            *Salir (presione 'x')"
            read -p "Tema: " opc

            case $opc in
                Cascada )
                    echo "Has seleccionado Cascada"
                    ./AvMenuTrad.inf -t Cascada
                    ;;
                Espiral )
                    echo "Has seleccionado Espiral"
                    ./AvMenuTrad.inf -t Espiral
                    ;;
                ModeloV )
                    echo "Has seleccionado Modelo V"
                    ./AvMenuTrad.inf -t ModeloV
                    ;;
                x | X )
                    echo "Saliendo del programa..."
                    exit 0
                    ;;
                * )
                    echo "Opción no válida, intenta de nuevo, por favor"
                    ;;
            esac
        done
        ;;
    x | X )
        echo "Saliendo del programa..."
        exit 0
        ;;

    * )
        echo "Opcion no valida, intenta de nuevo, por favor"
        ;;
esac