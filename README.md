Pantallas:

Pantalla de inicio de sesión:
Debe contener correo y contraseña como requisito de ingreso
Un botón para iniciar sesión, el cual debe validar sus credenciales (el usuario será su correo institucional y la contraseña su número de cuenta) al hacer clic en iniciar sesión, debe validar que esté ingresando los datos correctos, mediante uso de Form y TextFormField.
Un botón que permita "registrarse", al hacer clic, lo llevará a una pantalla de registro
Pantalla de registro:
La pantalla de registro debe capturar del usuario lo siguiente: Nombre, correo, teléfono, contraseña y confirmar contraseña.
Un botón que diga "registrate" que al ser presionado muestre los datos ingresados en consola.
Pantalla de inicio:
Una pantalla con un diseño a su criterio que muestre el correo de la persona que inició sesión.
Requisitos: 

 Al iniciar sesión (solo si colocó los datos correctos) lo debe enviar a la pantalla de inicio sin posibilidad de devolverse al Login.
Debe enviar desde el Login a la pantalla principal el correo de la persona que incia sesión
En la pantalla de registro, solo mostrará en consola la información si la validación del formulario se cumpla, las validaciones son las siguientes:
Nombre: mínimo 3 caracteres, máximo 10 caracteres.
Correo: Debe ser un correo valido, solo debe tener una @, debe finalizar con .edu.hn.
Teléfono: debe iniciar con 3 o 9 y debe tener exactamente 8 números 
Contraseña: Debe tener al menos 8 caracteres incluyendo una mayúscula y un carácter especial.
 Si la contraseña y la confirmación de contraseña no son iguales, no le permitirá mostrar los datos en consola, le mostrará un mensaje al usuario indicando dicho error.
