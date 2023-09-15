# Pixel art en Haskell

He aquí un pequeño ejemplo de cómo crear un pixel art utilizando Haskell.

[Pixel art de Megaman](/src/megaman.png)

## Requisitos para ejecutar el proyecto
- Haskell
- Biblioteca GLUT

### Pasos para instalar Haskell

Puedes instalar Haskell en Windows 10 ejecutando el siguiente comando desde una ventana de PowerShell con prermisos de administrador. Debes instalar todos los complementos predeterminados.

```sh
Set-ExecutionPolicy Bypass -Scope Process -Force;[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; try { Invoke-Command -ScriptBlock ([ScriptBlock]::Create((Invoke-WebRequest https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1 -UseBasicParsing))) -ArgumentList $true } catch { Write-Error $_ }
```

### Pasos para instalar la Biblioteca GLUT

- Descarga la biblioteca GLUT desde la página oficial de FreeGLUT: [GLUT](http://freeglut.sourceforge.net/index.php#download)

- En la sección "Windows Binaries", descarga el archivo zip correspondiente a tu arquitectura (32 bits o 64 bits). Asegúrate de elegir la versión que coincida con tu instalación de Haskell (32 bits o 64 bits).

- Descomprime el archivo zip descargado. Obtendrás una carpeta con los archivos de FreeGLUT.

- Copia los archivos freeglut.dll, freeglut.lib y freeglut.dll.a que se encuentran en la carpeta descomprimida.

- Navega hasta el directorio donde Haskell está instalado en tu sistema. Por lo general, la ruta es similar a C:\Program Files\Haskell.

- Dentro de la carpeta de Haskell, busca el directorio mingw y ábrelo.

- Dentro del directorio mingw, encontrarás una carpeta llamada bin. Pega los archivos freeglut.dll, freeglut.lib y freeglut.dll.a que copiaste en el paso 4 dentro de la carpeta bin.

- Haz clic derecho en "Este equipo" o "Mi PC" y selecciona "Propiedades".

- Haz clic en "Configuración avanzada del sistema" en el panel izquierdo.

- En la pestaña "Opciones avanzadas", haz clic en el botón "Variables de entorno".

- Busca la variable de entorno "PATH" en la sección "Variables del sistema" y haz doble clic en ella.

- Agrega la ruta completa al directorio mingw/bin al final de la lista de rutas existentes, asegurándote de separarla de las rutas anteriores con un punto y coma (;).

- Haz clic en "Aceptar" para guardar los cambios.

- Después de agregar la ruta al PATH, reinicia tu línea de comandos

Una vez hecho todo esto ya podrás ejecutar el proyecto abriendo el cmd en la ruta de la carpeta y ejecutando los siguientes comandos:

```sh
cabal build
cabal run
```

https://drive.google.com/drive/folders/1-V6yDhVbpA8uir9xygHImOkQyXyExIXV?usp=drive_link
