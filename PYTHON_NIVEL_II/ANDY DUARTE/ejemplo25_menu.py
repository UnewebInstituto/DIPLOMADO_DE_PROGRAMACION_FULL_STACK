import tkinter as tk

ventana=tk.Tk()

barra_de_menu = tk.Menu(ventana)

menu_archivo = tk.Menu (barra_de_menu, tearoff=0)
menu_archivo.add_command(label="abrir")
menu_archivo.add_command(label="Guardar")
menu_archivo.add_command(label="Salir")

barra_de_menu.add_cascade(label="archivo" , menu=menu_archivo)

menu_edicion = tk.Menu (barra_de_menu, tearoff=0)
menu_edicion.add_command(label="cortar")
menu_edicion.add_command(label="copiar")
menu_edicion.add_command(label="pegar")
barra_de_menu.add_cascade(label="Edicion" , menu=menu_edicion)


ventana.config(menu=barra_de_menu)
ventana.mainloop()