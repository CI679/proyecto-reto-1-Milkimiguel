#!/bin/bash

# Función del submenú
sub_menu() {

    seccion="$1"

        case "$seccion" in
        SCRUM|XP|Kanban|Crystal)
            carpeta="Ag"
            ;;
        Cascada|Espiral|ModeloV)
            carpeta="Trad"
            ;;
        *)
            echo "Error: metodología desconocida"
            return
            ;;
    esac
    archivo="$carpeta/${seccion}.inf"


    while true; do
        echo ""
        echo "Usted está en la sección $seccion, seleccione la opción que desea utilizar:"
        echo "1. Agregar información"
        echo "2. Buscar"
        echo "3. Eliminar información"
        echo "4. Leer base de información"
        echo "5. Volver al menú anterior"
        echo "6. Salir"
        echo ""
        read -p "Opción: " opcion

        case $opcion in

            1)
                read -p "Ingrese el concepto: " concepto
                if [[ -z "$concepto" ]]; then
                    echo "El concepto no puede estar vacío."
                    continue
                fi

                read -p "Ingrese la definición: " definicion 
                if [[ -z "$definicion" ]]; then
                   echo "La definición no puede estar vacía."
                   continue
                fi
                echo "[$concepto] .- $definicion" >> "$archivo"
                echo "Información agregada correctamente."
                ;;
            2)
                read -p "Ingrese el concepto a buscar: " buscar
                grep -i "\[$buscar\]" "$archivo" || echo "Concepto no encontrado."
                ;;
            3)
                read -p "Ingrese el concepto a eliminar: " eliminar
                sed -i "/\[$eliminar\]/Id" "$archivo"
                echo "Si existía, la información fue eliminada."
                ;;
            4)
                echo "Contenido de la base de información:"
                cat "$archivo"
                ;;
            5)
                break
                ;;
            6)
                echo "Saliendo del programa..."
                exit 0
                ;;
            *)
                echo "Opción no válida, intenta de nuevo."
                ;;
        esac
    done
}

# Menú principal de bandera
case $1 in
    -a )
        while true; do
            echo ""
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
                    sub_menu SCRUM
                    ;;
                XP )
                    echo "Has seleccionado XP"
                    sub_menu XP
                    ;;
                Kanban )
                    echo "Has seleccionado Kanban"
                    sub_menu Kanban
                    ;;
                Crystal )
                    echo "Has seleccionado Crystal"
                    sub_menu Crystal
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
    -t ) 
        while true; do
            echo ""
            echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:
                *Cascada
                *Espiral
                *ModeloV
                *Salir (presione 'x')"
            read -p "Tema: " opc

            case $opc in
                Cascada )
                    echo "Has seleccionado Cascada"
                    sub_menu Cascada
                    ;;
                Espiral )
                    echo "Has seleccionado Espiral"
                    sub_menu Espiral
                    ;;
                ModeloV )
                    echo "Has seleccionado ModeloV"
                    sub_menu ModeloV
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
        echo "Opción no válida, intenta de nuevo, por favor"
        ;;
esac
