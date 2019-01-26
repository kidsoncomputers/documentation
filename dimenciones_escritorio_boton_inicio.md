# Problema: Cambian las dimensiones del Escritorio y Se quita el botón de inicio
Al referirse a que cambian las dimensiones del escritorio nos referimos a que 
se ha alterado el tamaño de los iconos y se ha alterado las dimensiones de la barra de tareas.
El botón de inicio ha sido movido y ahora no se puede ingresar de forma
gráfica a las aplicaciones.
Se ha agrupado estas dos fallas debido a que es un problema que se presenta
en la barra de tareas.

## Solución 
Para poder solucionar los dos problemas de forma rápida y conjunta solo es
necesario seguir los siguientes pasos:

### Paso 1:
Sobre una parte vacía del escritorio (que no contenga ningún icono) damos
click derecho y tenemos que ir a la opción de terminal, el cual nos abrirá el
siguiente panel y escribimos en ella el siguiente comando y damos enter.

```
sudo rm -r ~/.config/lxpanel
```

## Paso 2:
Una vez dada la entrada anterior ahora se procede a escribir el siguiente comando
```
Sudo service lightdm restart
```

Con estos dos comandos se solucionan los dos problemas presentados al inicio.
