# 🗂️ Organizador de Archivos (.bat)

Este repositorio contiene un script en **Windows Batch (`.bat`)** que organiza automáticamente los archivos de una carpeta en subcarpetas según su **tipo o categoría**.  
Además, maneja conflictos de nombre enviando duplicados a una carpeta especial de `Conflictos`.

---

## ⚡ Funcionalidad
- Clasifica archivos en carpetas como:  
  - **Documentos** (`.pdf`, `.docx`, `.xlsx`, `.txt`, `.pptx`, `.csv`, `.odt`, `.epub`, etc.)  
  - **Imágenes** (`.jpg`, `.png`, `.gif`, `.bmp`, `.psd`, `.svg`, `.raw`, `.tiff`, etc.)  
  - **Música** (`.mp3`, `.wav`, `.flac`, `.ogg`, `.aac`, `.midi`, etc.)  
  - **Videos** (`.mp4`, `.mkv`, `.avi`, `.mov`, `.wmv`, `.flv`, `.webm`, `.3gp`, etc.)  
  - **Comprimidos** (`.zip`, `.rar`, `.7z`, `.tar`, `.iso`, `.gz`, `.bz2`, etc.)  
  - **Ejecutables** (`.exe`, `.msi`, `.scr`, `.com`, etc.)  
  - **Código / Scripts** (`.bat`, `.ps1`, `.py`, `.java`, `.cpp`, `.js`, `.ts`, `.html`, `.css`, `.json`, `.xml`, etc.)  
  - **Otros** → Si no pertenece a ninguna categoría definida.  

- Si un archivo ya existe en la carpeta destino con el mismo nombre, se mueve a:  
  ```
  Conflictos\<Categoria>\
  ```

- Ignora su propio archivo `ORDENAR-ARCHIVOS.bat`.

---

## 🛠️ Uso
1. Descarga el archivo [`ORDENAR-ARCHIVOS.bat`](./ORDENAR-ARCHIVOS.bat).  
2. Copia el archivo en la carpeta que deseas organizar.  
3. Haz doble clic sobre `ORDENAR-ARCHIVOS.bat`.  
4. El script:
   - Creará carpetas automáticamente solo si hay archivos que clasificar.  
   - Moverá cada archivo a su categoría correspondiente.  
   - Guardará en `Conflictos` aquellos con nombres duplicados.  

---

## ⚠️ Advertencias
- Este script **mueve** archivos, no los copia.  
- Verifica que la carpeta no tenga archivos importantes sin respaldo antes de ejecutarlo.  
- Si deseas revertir los cambios, simplemente mueve manualmente los archivos desde las subcarpetas de regreso a la carpeta original.  
- Está pensado para **Windows** (CMD). No funcionará en Linux/Mac.  

---

## 📂 Ejemplo

Antes:
```
C:\CarpetaPrueba
  ├── foto.jpg
  ├── musica.mp3
  ├── documento.pdf
  ├── ORDENAR-ARCHIVOS.bat
```

Después:
```
C:\CarpetaPrueba
  ├── Imagenes\
  │     └── foto.jpg
  ├── Musica\
  │     └── musica.mp3
  ├── Documentos\
  │     └── documento.pdf
  ├── ORDENAR-ARCHIVOS.bat
```
