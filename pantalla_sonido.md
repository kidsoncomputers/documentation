# Problema: Cambiar la resolución de la pantalla y el sonido desaparece
El problema se presenta al conectar la tarjeta Raspberry Pi a un monitor con distinta
resolución, este no se ajustaba de forma automática y sus dimensiones no
permitían que el usuario encontrara un ambiente adecuado de trabajo.
## Solución:
## Cambiar resolución de pantalla:
Primero citaremos las fuentes de donde se saco la información para poder
modificar el config.txt http://ieeesb-uniovi.es/talleres-charlas/linux/raspberry-pi/ 
ahora para poder cambiar la resolución de acuerdo a nuestro monitor debemos consultar una lista con los distintos
tipos de resolución en el siguiente enlace http://elinux.org .

Debemos abrir una terminal, en esta debemos poner el siguiente
comando:
```
  sudo nano/boot/config.txt
```
como se muestra en la siguiente imagen:  

![Scheme](imagenes/pa_1.JPG)  

Una vez que este se ejecuta, se abrirá un archivo del cual se buscarán y eliminarán
los # en las siguientes lineas:
```
#hdmi_group=2 //Es el tipo de salida HDMI( 1 por defecto): 1=CEA y 2=DMT
#hdmi_mode=39 //Resolución de salida (configurar el valor según la tabla de la pagina// elinux)
#hdmi_drive=2 //Si el formato elegido es el DMT.
```
Estas configuraciones las mostramos en la siguiente imagen:  

![Scheme](imagenes/pa_2.JPG)

## El sonido desaparece
El problema es que no se escuchaba el audio, dependiendo si el monitor tenía
parlantes o simplemente la salida del audio era por auriculares.

El siguiente comando ingresado por terminal cambiará la salida de audio a HDMI:
```
amixer cset numid=3 1
```
Aquí la salida se establece a 1 ya que el monitor no tenía parlantes, la cambiamos a
analógica (toma de auriculares), en caso de que si la salida sería 2. El ajuste
predeterminado es 0, que es automático.

La segunda forma de resolverlo, es muy sencilla para el usuario. En la esquina
superior derecha hay un icono en forma de parlante, se selecciona y este desplegara dos
opciones para el tipo de salida que nos gustaría (Analógica o HDMI), como se muestra en
la siguiente imagen:
![Scheme](imagenes/pa_3.JPG)
