class Factura:
    # Atributos
    monto1 = 0
    monto2 = 0
    nroTrabajadores = 0
    nroFactura = 0
    # Métodos
    def __init__(self, argMto1, argMto2, argNroTrab, argNroFact):
        #El constructor se utiliza para inicializar la clas
        self.monto1 = argMto1
        self.monto2 = argMto2
        self.nroTrabajadores = argNroTrab
        self.nroFactura = argNroFact
    def calcFactura(self):
        monto1Total = self.monto1*self.nroTrabajadores
        monto2Total = self.monto2*self.nroTrabajadores
        subTotal = monto1Total + monto2Total
        return subTotal

    
