function identidad<T>(arg: T): T { 
return arg; 
} 
// Uso explícito (TypeScript infiere el tipo de todas formas) 
let output1 = identidad<string>("Hola Mundo"); // output1 es de tipo string 
let output2 = identidad<number>(123);         
// output2 es de tipo number 
// Uso por inferencia (el mejor enfoque) 
let output3 = identidad("TypeScript"); // T se infiere como string 
let output4 = identidad(true);         
// T se infiere como boolean