import tkinter as tk
from tkinter import ttk, messagebox
import tk_conexion

class UnewebApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Uneweb - Gestión de Personas")
        self.root.geometry("800x600")

        # Variables de control
        self.id_var = tk.StringVar()
        self.cedula_var = tk.StringVar()
        self.nombres_var = tk.StringVar()
        self.apellidos_var = tk.StringVar()
        self.telefono_var = tk.StringVar()
        self.fecha_var = tk.StringVar()

        self.create_widgets()
        self.cargar_datos()

    def create_widgets(self):
        # --- Formulario ---
        frame_form = tk.LabelFrame(self.root, text="Datos Personales", padx=10, pady=10)
        frame_form.pack(fill="x", padx=20, pady=10)

        # Usamos Grid para organizar los campos (similar a los Entry y Label de los ejemplos)
        fields = [
            ("Cédula:", self.cedula_var), ("Nombres:", self.nombres_var),
            ("Apellidos:", self.apellidos_var), ("Teléfono:", self.telefono_var),
            ("Fecha Nac (AAAA-MM-DD):", self.fecha_var)
        ]

        for i, (label_text, var) in enumerate(fields):
            tk.Label(frame_form, text=label_text).grid(row=i//2, column=(i%2)*2, sticky="e", padx=5, pady=2)
            tk.Entry(frame_form, textvariable=var).grid(row=i//2, column=(i%2)*2+1, padx=5, pady=2)

        tk.Label(frame_form, text="Dirección:").grid(row=3, column=0, sticky="ne")
        self.txt_direccion = tk.Text(frame_form, width=40, height=3) # Basado en ejemplo22_tk_text
        self.txt_direccion.grid(row=3, column=1, columnspan=3, sticky="w", padx=5, pady=2)

        # --- Botonera ---
        frame_btns = tk.Frame(self.root)
        frame_btns.pack(pady=10)

        tk.Button(frame_btns, text="Guardar", command=self.guardar, bg="#4CAF50", fg="white").pack(side="left", padx=5)
        tk.Button(frame_btns, text="Actualizar", command=self.actualizar).pack(side="left", padx=5)
        tk.Button(frame_btns, text="Eliminar", command=self.eliminar, bg="#f44336", fg="white").pack(side="left", padx=5)
        tk.Button(frame_btns, text="Limpiar", command=self.limpiar_campos).pack(side="left", padx=5)

        # --- Tabla de Datos (Treeview) ---
        self.tree = ttk.Treeview(self.root, columns=("ID", "CED", "NOM", "APE", "DIR", "FEC", "TEL"), show="headings")
        self.tree.heading("ID", text="ID")
        self.tree.heading("CED", text="Cédula")
        self.tree.heading("NOM", text="Nombres")
        self.tree.heading("APE", text="Apellidos")
        self.tree.heading("DIR", text="Dirección")
        self.tree.heading("FEC", text="Fecha Nac")
        self.tree.heading("TEL", text="Teléfono")
        
        # Ajustar anchos
        for col in ("ID", "CED", "TEL"): self.tree.column(col, width=80)
        
        self.tree.pack(fill="both", expand=True, padx=20, pady=10)
        self.tree.bind("<<TreeviewSelect>>", self.seleccionar_registro)

    # --- Lógica de Negocio ---

    def cargar_datos(self):
        # Limpiar tabla
        for item in self.tree.get_children():
            self.tree.delete(item)
        
        mycursor = tk_conexion.mydb.cursor()
        mycursor.execute("SELECT * FROM personas")
        for row in mycursor.fetchall():
            self.tree.insert("", tk.END, values=row)

    def guardar(self):
        try:
            sql = "INSERT INTO personas(cedula, nombres, apellidos, direccion, fechanac, telefono) VALUES (%s, %s, %s, %s, %s, %s)"
            datos = (self.cedula_var.get(), self.nombres_var.get(), self.apellidos_var.get(), 
                     self.txt_direccion.get("1.0", tk.END).strip(), self.fecha_var.get(), self.telefono_var.get())
            
            mycursor = tk_conexion.mydb.cursor()
            mycursor.execute(sql, datos)
            tk_conexion.mydb.commit()
            messagebox.showinfo("Éxito", "Registro guardado correctamente") # Basado en ejemplo16
            self.limpiar_campos()
            self.cargar_datos()
        except Exception as e:
            messagebox.showerror("Error", f"No se pudo guardar: {e}")

    def seleccionar_registro(self, event):
        item = self.tree.focus()
        if not item: return
        valores = self.tree.item(item, "values")
        
        self.id_var.set(valores[0])
        self.cedula_var.set(valores[1])
        self.nombres_var.set(valores[2])
        self.apellidos_var.set(valores[3])
        self.txt_direccion.delete("1.0", tk.END)
        self.txt_direccion.insert(tk.END, valores[4])
        self.fecha_var.set(valores[5])
        self.telefono_var.set(valores[6])

    def actualizar(self):
        if not self.id_var.get():
            messagebox.showwarning("Atención", "Seleccione un registro para actualizar")
            return
        
        sql = "UPDATE personas SET nombres=%s, apellidos=%s, direccion=%s, fechanac=%s, telefono=%s WHERE id=%s"
        valores = (self.nombres_var.get(), self.apellidos_var.get(), 
                   self.txt_direccion.get("1.0", tk.END).strip(), self.fecha_var.get(), 
                   self.telefono_var.get(), self.id_var.get())
        
        mycursor = tk_conexion.mydb.cursor()
        mycursor.execute(sql, valores)
        tk_conexion.mydb.commit()
        messagebox.showinfo("Uneweb", "Registro actualizado")
        self.cargar_datos()

    def eliminar(self):
        if not self.id_var.get(): return
        
        # Basado en ejemplo16_tk_messagebox: askyesno
        if messagebox.askyesno("Confirmar", "¿Desea eliminar este registro?"):
            sql = "DELETE FROM personas WHERE id=%s"
            mycursor = tk_conexion.mydb.cursor()
            mycursor.execute(sql, (self.id_var.get(),))
            tk_conexion.mydb.commit()
            self.limpiar_campos()
            self.cargar_datos()

    def limpiar_campos(self):
        self.id_var.set("")
        self.cedula_var.set("")
        self.nombres_var.set("")
        self.apellidos_var.set("")
        self.telefono_var.set("")
        self.fecha_var.set("")
        self.txt_direccion.delete("1.0", tk.END)

if __name__ == "__main__":
    root = tk.Tk()
    app = UnewebApp(root)
    root.mainloop()