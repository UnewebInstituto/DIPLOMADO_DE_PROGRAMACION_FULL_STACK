from tkinter import messagebox

# ------ Ventanas ------
r = messagebox.showinfo('Información','Tomar en cuenta las advertencias')
print(r)
r = messagebox.showerror("Alerta", "Se ha producido un error")
print(r)
r = messagebox.askquestion("Cunsulta", "¿Estas Seguro?")
print(r)
r = messagebox.askretrycancel("Cunsulta", "Indique su respuesta")
print(r)
r = messagebox.askyesno("¿Confirmar?", "¿Estas Seguro?")
print(r)
r = messagebox.askyesnocancel("¿Confirmar?", "Indique su respuesta")
print(r)
r = messagebox.showwarning("Alerta", "Esto es una alerta")
print(r)
