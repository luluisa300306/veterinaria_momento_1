import 'dart:io';

import 'package:veterinaria_momento_1/veterinaria_momento_1.dart';

void menuMascota(List<Mascota> pacientes) {

  while (true) {
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
    consultarPacientes(pacientes);
    break;

    case '3':
    buscarPaciente(pacientes);
    break;

    case '4':
    modificarPaciente(pacientes);
    break;

    case '5':
    eliminarPaciente(pacientes);
    break;

    case '6':
    mostrarResumen(pacientes);
    break;

    case '0':
    print('Saliste del sistema. ¡Hasta pronto!');
    return;

    default: 
    print('Opción no válida. Por favor, elige nuevamente un numero del menu.');
    break;
  }
  } 
}

void main() {
  List<Mascota> pacientes = [];
  menuMascota(pacientes);
}