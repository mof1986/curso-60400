#!/bin/bash

# Definir la carpeta de origen y destino
carpeta_origen="img"
carpeta_destino="img/excluidos"

# Lista de imágenes que deben permanecer en la carpeta de origen
imagenes_a_mover=(
    "logo_nuego_20_10_21.png"
    "banner_ladrillos.webp"
    "banner_bolsa-telgopor.jpeg"
    "banner_trapezoidal.webp"
    "contenedor-medsize.webp"
    "techos-medsize.webp"
    "letras-medsize.png"
    "numeros telgopor-20201016_110210_1_-removebg-preview-1.png"
    "figure_colored_light_bulb_puzzle_500_clr_9679.gif"
    "nosotros-fusion.jpg"
    "nosotros-vendedor.png"
    "nosotros-messi.png"
    "nosotros_black-and-white-man-portrait-male-face-boy.jpeg"
    "producto1_ladrillo losa_Viguetas.webp"
    "producto2_molones.webp"
    "producto3_placas.webp"
    "producto4_placas trapezoidal.webp"
    "producto5_bolsa de granulado 1_5mts_3.webp"
    "producto6_bolson granulado.webp"
    "productos_nucleosteel.webp"
    "vasos_termicos_telgopor.jpg"
    "2_clientes_CERRONAVIA.png"
    "2_clientes_CONCHALI.png"
    "2_clientes_curacavi.png"
    "2_clientes_ELBOSQUE.png"
    "2_clientes_FUENZALIDA.png"
    "2_clientes_ICUADRA.png"
    "2_clientes_LACALERA.png"
    "2_clientes_LACISTERNA.png"
    "2_clientes_LAFLORIDA.png"
    "2_clientes_PUENTEALTO.png"
)

# Comprobar si la carpeta de destino ya existe y no es un archivo regular
if [ -e "$carpeta_destino" ] && [ ! -f "$carpeta_destino" ]; then
    echo "La carpeta de destino '$carpeta_destino' ya existe."
else
    # Crear la carpeta de destino si no existe
    mkdir -p "$carpeta_destino"
    echo "La carpeta de destino '$carpeta_destino' ha sido creada."
fi

# Mover las imágenes restantes a la carpeta de destino
for imagen in "$carpeta_origen"/*; do
    nombre_imagen=$(basename "$imagen")
    if [[ ! " ${imagenes_a_mover[@]} " =~ " ${nombre_imagen} " ]]; then
        mv "$imagen" "$carpeta_destino"
    fi
done

echo "Se han movido las imágenes restantes a la carpeta 'excluidos'."

