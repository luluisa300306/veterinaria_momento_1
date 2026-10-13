import 'dart:io';



void menuMascota() {
  print('GESTIÓN DE PACIENTES PELUDOS');
  print('-----------------------------');
  print('1.Registrar paciente');
  print('2.Consultar todos los pacientes');
  print('3. Buscar paciente');
  print('4. Modificar información del paciente');
  print('5. Eliminar paciente');
  print('6. Mostrar Resumen');
  print('0. Salir');
  print('-----------------------------');

  stdout.write('Selecciones una opción:');
  String? opcion = stdin.readLineSync();

  switch (opcion) {
    case '1':
    print('La opción seleccionada fue: 1.Registrar paciente');
    break;

    case '2':
    print('La opción seleccionada fue: 2.Consultar todos los pacientes');
    break;

    case '3':
    print('La opción seleccionada fue: 3. Buscar paciente');
    break;

    case '4':
    print('La opción seleccionada fue: 4. Modificar información del paciente');
    break;

    case '5':
    print('La opción seleccionada fue: 5. Eliminar paciente');
    break;

    case '6':
    print('La opción seleccionada fue: 6. Mostrar Resumen');
    break;

    case '0':
    print('La opción seleccionada fue: 0. Salir');
    break;
  }

}

void main() {
  menuMascota();
}