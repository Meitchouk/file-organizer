@echo off
setlocal enabledelayedexpansion

rem Ignorar el propio script
set "script=%~nx0"

rem ==============================
rem  Subrutina de movimiento seguro
rem  Uso: call :MoveSmart "CarpetaDestino" "Ruta\Archivo"
rem  - Crea la carpeta destino solo si hace falta
rem  - Si hay conflicto de nombre, mueve a Conflictos\CarpetaDestino\
rem ==============================
rem NOTA: la subrutina va al final del archivo, después del :EOF visible.
rem       No borrar el bloque :MoveSmart.
rem ==============================

rem Recorremos todos los archivos de la carpeta actual
for %%f in (*.*) do (
    if /i not "%%~nxf"=="%script%" (
        set "ext=%%~xf"
        set "ext=!ext:~1!"

        rem =======================
        rem      DOCUMENTOS
        rem =======================
        if /i "!ext!"=="txt"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="rtf"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="md"    call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="pdf"   call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="doc"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="docx"  call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="xls"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="xlsx"  call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="csv"   call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="ppt"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="pptx"  call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="odt"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="ods"   call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="odp"   call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="epub"  call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="mobi"  call :MoveSmart "Documentos" "%%f"

        if /i "!ext!"=="pages" call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="numbers" call :MoveSmart "Documentos" "%%f"
        if /i "!ext!"=="key"   call :MoveSmart "Documentos" "%%f"


        rem =======================
        rem       IMAGENES
        rem =======================
        if /i "!ext!"=="jpg"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="jpeg"  call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="png"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="gif"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="bmp"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="webp"  call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="tif"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="tiff"  call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="heic"  call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="heif"  call :MoveSmart "Imagenes" "%%f"

        rem diseño/vector/edición
        if /i "!ext!"=="svg"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="ico"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="psd"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="ai"    call :MoveSmart "Imagenes" "%%f"

        rem RAW camara
        if /i "!ext!"=="cr2"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="nef"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="arw"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="dng"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="raf"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="rw2"   call :MoveSmart "Imagenes" "%%f"
        if /i "!ext!"=="orf"   call :MoveSmart "Imagenes" "%%f"


        rem =======================
        rem         MUSICA
        rem =======================
        if /i "!ext!"=="mp3"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="wav"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="flac"  call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="m4a"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="aac"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="ogg"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="wma"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="aiff"  call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="opus"  call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="mid"   call :MoveSmart "Musica" "%%f"
        if /i "!ext!"=="midi"  call :MoveSmart "Musica" "%%f"


        rem =======================
        rem         VIDEOS
        rem =======================
        if /i "!ext!"=="mp4"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="avi"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="mkv"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="mov"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="wmv"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="flv"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="webm"  call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="m4v"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="3gp"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="mpg"   call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="mpeg"  call :MoveSmart "Videos" "%%f"
        if /i "!ext!"=="ts"    call :MoveSmart "Videos" "%%f"


        rem =======================
        rem      COMPRIMIDOS
        rem =======================
        if /i "!ext!"=="zip"   call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="rar"   call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="7z"    call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="tar"   call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="gz"    call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="bz2"   call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="xz"    call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="tgz"   call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="tbz2"  call :MoveSmart "Comprimidos" "%%f"
        if /i "!ext!"=="iso"   call :MoveSmart "Comprimidos" "%%f"


        rem =======================
        rem      EJECUTABLES
        rem =======================
        if /i "!ext!"=="exe"   call :MoveSmart "Ejecutables" "%%f"
        if /i "!ext!"=="msi"   call :MoveSmart "Ejecutables" "%%f"
        if /i "!ext!"=="msp"   call :MoveSmart "Ejecutables" "%%f"
        if /i "!ext!"=="msu"   call :MoveSmart "Ejecutables" "%%f"
        if /i "!ext!"=="com"   call :MoveSmart "Ejecutables" "%%f"
        if /i "!ext!"=="scr"   call :MoveSmart "Ejecutables" "%%f"


        rem =======================
        rem         CODIGO
        rem =======================
        rem Batch/PowerShell/Shell
        if /i "!ext!"=="bat"   if /i not "%%~nxf"=="%script%" call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="cmd"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="ps1"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="psm1"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="psd1"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="sh"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="bash"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="zsh"   call :MoveSmart "Codigo" "%%f"

        rem Web/JS/TS
        if /i "!ext!"=="js"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="mjs"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="cjs"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="ts"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="tsx"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="jsx"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="html"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="htm"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="css"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="scss"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="less"  call :MoveSmart "Codigo" "%%f"

        rem Datos/Config/Marcado
        if /i "!ext!"=="json"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="yaml"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="yml"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="xml"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="ini"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="cfg"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="conf"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"==".env"  call :MoveSmart "Codigo" "%%f"

        rem Lenguajes
        if /i "!ext!"=="py"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="pyw"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="ipynb" call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="java"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="kt"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="kts"   call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="cs"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="vb"    call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="cpp"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="cxx"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="cc"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="c"     call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="h"     call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="hpp"   call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="go"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="rs"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="swift" call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="m"     call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="mm"    call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="rb"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="php"   call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="pl"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="pm"    call :MoveSmart "Codigo" "%%f"

        if /i "!ext!"=="r"     call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="jl"    call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="dart"  call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="lua"   call :MoveSmart "Codigo" "%%f"
        if /i "!ext!"=="sql"   call :MoveSmart "Codigo" "%%f"


        rem =======================
        rem          OTROS
        rem =======================
        if not exist "Documentos\%%f" if not exist "Imagenes\%%f" if not exist "Musica\%%f" if not exist "Videos\%%f" if not exist "Comprimidos\%%f" if not exist "Ejecutables\%%f" if not exist "Codigo\%%f" (
            call :MoveSmart "Otros" "%%f"
        )
    )
)

echo.
echo Archivos organizados por CLASIFICACION correctamente.
pause
goto :EOF

:MoveSmart
rem %~1 = Carpeta destino (ej. "Documentos")
rem %~2 = Archivo a mover (ej. "C:\ruta\archivo.ext" o "%%f")
setlocal
set "dest=%~1"
set "file=%~2"

rem Crear destino solo si hace falta
if not exist "%dest%" mkdir "%dest%"

rem Si existe conflicto de nombre, mover a Conflictos\dest\
if exist "%dest%\%~nx2" (
    if not exist "Conflictos" mkdir "Conflictos"
    if not exist "Conflictos\%dest%" mkdir "Conflictos\%dest%"
    move /Y "%~2" "Conflictos\%dest%\" >nul 2>&1
) else (
    move /Y "%~2" "%dest%\" >nul 2>&1
)

endlocal
exit /b
