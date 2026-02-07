import tkinter as tk
ventana = tk.Tk()
# Crear la barra de menú
barra_de_menu = tk.Menu(ventana)
# Crear menú "Archivo" y agregarlo a la barra de menú
menu_archivo = tk.Menu(barra_de_menu, tearoff = 0)
menu_archivo.add_command(label="Abrir")
menu_archivo.add_command(label="Guardar")
menu_archivo.add_command(label="Salir", command=ventana.quit)
barra_de_menu.add_cascade(label="Archivo", menu=menu_archivo)
# Crear menú "Edición" y agregarlo a la barra de menú
menu_edicion = tk.Menu(barra_de_menu, tearoff = 0)
menu_edicion.add_command(label="Cortar")
menu_edicion.add_command(label="Copiar")
menu_edicion.add_command(label="Pegar")
barra_de_menu.add_cascade(label="Edición", menu=menu_edicion)
# Configurar la ventana principal para que use la barra de menú
ventana.config(menu=barra_de_menu)
ventana.mainloop()