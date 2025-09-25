# 🗂️ Organizador de Archivos (.bat)

Este repositorio contiene un script en **Windows Batch (`.bat`)** que organiza automáticamente los archivos de una carpeta en subcarpetas según su **tipo o categoría**.  
Además, maneja conflictos de nombre enviando duplicados a una carpeta especial de `Conflictos`.

---

## ⚡ Funcionalidad
- Clasifica archivos en carpetas como:  
  - **Documentos** (`.pdf`, `.docx`, `.xlsx`, `.txt`, `.pptx`, etc.)  
  - **Imágenes** (`.jpg`, `.png`, `.gif`, `.psd`, `.svg`, `.raw`, etc.)  
  - **Música** (`.mp3`, `.wav`, `.flac`, `.ogg`, `.aac`, etc.)  
  - **Videos** (`.mp4`, `.mkv`, `.avi`, `.mov`, `.wmv`, etc.)  
  - **Comprimidos** (`.zip`, `.rar`, `.7z`, `.tar`, `.iso`, etc.)  
  - **Ejecutables** (`.exe`, `.msi`, `.scr`, etc.)  
  - **Código / Scripts** (`.bat`, `.ps1`, `.py`, `.java`, `.cpp`, `.js`, `.ts`, `.html`, etc.)  
  - **Otros** → Si no pertenece a ninguna categoría definida.  

- Si un archivo ya existe en la carpeta destino con el mismo nombre, se mueve a:  
