import 'dart:io';

import 'package:veterinaria_momento_1/veterinaria_momento_1.dart';

void menuMascota(List<Mascota> pacientes) {

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
    registrarMascota(pacientes);
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
    return;

    default: 
    print('Opción no válida. Por favor, elige nuevamente un numero del menu.');
    break;
  }
}

void main() {
  List<Mascota> pacientes = [];
  menuMascota(pacientes);
}