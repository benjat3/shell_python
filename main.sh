# ¿Cómo comenzamos un script en bash?

#!/bin/bash

# main.sh
# Lunes 29 de septiembre de 2025
# Duilio Benjamín Torres - Manejo de archivos y ejecucion de codigos
# Script para practicar en clase.


# Para trabajar ordenados, acá podemos definir variables que luego vamos a usar
# VARIABLES:
IMG_DIR="../codigo/dataset"
RESULTADO="resultado"


#Creamos un directorio para guardar los resultados:
mkdir -p "$RESULTADO"


# 1) Analizar imagenes y guardar resumen
# El programa toma una carpeta con imagenes y da como salida un resumen de parámetros importantes a un csv.
# Salida (CSV): (explorar el código y ver qué significa cada columna del csv)
# filename,index,i,j,alpha,beta,size_bytes


# Entonces:
# Queremos ejecutar el script analyze_images.py en la carpeta donde están las imagenes
# Luego enviar la salida a un archivo csv en la carpeta resultado

python3 scripts/analyze_images.py "$IMG_DIR" > "$RESULTADO/resumen.csv"

# 2) Crear trayectoria circular 
#
# Ahora queremos elegir la trayectoria
# Vamos a elegir una trayectoria circular con: cx=135, cy=40, r=30, npts=50
# Ver en el script cómo se le dan estas opciones
# 
# Entonces ejecutamos el script con la trayectoria elegida
# Luego enviamos la salida a un .txt en la carpeta resultado



# 3) Preparar imagenes segun la lista
#
# Vamos a crear un directorio temporal (ver opción -p para evitar errores)
# Eliminamos todo lo que tenga dentro por las dudas que ya exista (usar -f para evitar interacción)



# Ahora vamos a leer todas las líneas del archivo de trayectorias
# Este va a contener cada imagen que compone la trayectoria que deseamos
# 
# Creamos un while utilizando "read" (investigarlo, muy útil en este caso)
# Copiamos el archivo con cada nombre que nos interesa en la lista que teníamos anteriormente
# Lo enviamos a nuestra carpeta temporal y le cambiamos el nombre para ordenarlo por frame.
# 
# Recordar con < traemos un archivo para que sea la entrada



# 4) Generar video con ffmpeg (15 fps)
#
# Vamos a generar un video con ffmpeg (instalar)
# Lo creamos en la carpeta resultado utilizando las imagenes de la carpeta temporal
# Lo creamos a 15fps o menos para que no sea tan corto
#
#
##ffmpeg -y -framerate 15 -i "????????" -c:v libx264 -pix_fmt yuv420p "?????"

# 5) Generar reporte
#
# Ejecutamos el codigo "report.py" y a partir de la salida de 
# "analyze_images.py" vamos a crear un reporte en la misma carpeta.

# Dar un mensaje de que el proceso terminó e indicar la carpeta
# en la que se guardó todo.
