import tkinter as tk

ventana = tk.Tk()
barra_de_menu = tk.Menu(ventana)

menu_archivo = tk.Menu(barra_de_menu, tearoff=0)
menu_archivo.add_command(label="Abrir")
menu_archivo.add_command(label="Guardar")
menu_archivo.add_command(label="Salir", command=ventana.quit)
barra_de_menu.add_cascade(label="Archivo", menu=menu_archivo)

menu_edicion = tk.Menu(barra_de_menu, tearoff=0)
menu_edicion.add_command(label="Cortar")
menu_edicion.add_command(label="Copiar")
menu_edicion.add_command(label="Pegar")
barra_de_menu.add_cascade(label="Edición", menu=menu_edicion)

ventana.config(menu=barra_de_menu)
ventana.mainloop()