rem Generación de ejecutable a partir fuente python
rem Produce directorio con archivos y librerías de 
rem dependencias.
rem Asegurarse de haber efectuado la intalación de la
rem libería
rem pip install pyinstaller --force
pyinstaller ejemplo10.py
pyinstaller ejemplo09.py --onefile
