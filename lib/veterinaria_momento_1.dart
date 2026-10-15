import 'dart:io';

class Mascota {
  String nombre;
  String especie; 
  int edad; 
  List<String> antecedenteMedico;
  String motivoConsulta;
  String diaCita;

  Mascota ({
    required this.nombre, 
    required this.especie,
    required this.edad,
    required this.antecedenteMedico, 
    required this.motivoConsulta, 
    required this.diaCita,});

  void mostrarInformacion() {
    String antecedentes = antecedenteMedico.isEmpty
    ? 'Ninguno reportado'
    : antecedenteMedico.join(',');

    print ('\n----FICHA DEL PANCIENTE----');
    print ('Nombre: $nombre');
    print ('Especie: $especie');
    print ('Edad: $edad');
    print ('Antecedentes Medicos: $antecedentes');
    print ('Motivo de consulta: $motivoConsulta');
    print ('Dia de la cita: $diaCita');
  }
}

String leerTexto(String pregunta) {
  stdout.write(pregunta);
  return stdin.readLineSync() ?? '';
}

void registrarMascota(List<Mascota> pacientes) {
  print('\n¡Bienvenido al registro de citas para tus peluditos');

  String nombre = leerTexto('¿Como se llama tu peludito?');
  while (true) {
    nombre = leerTexto('¿Como se llama tu peludito?').trim();

    if (nombre.isNotEmpty) {
      break;
    }

    print('El nombre no puede estar vacio');
  }

  String especie = leerTexto('¿Que especie es?');

  while (true){
    especie = leerTexto('¿Que especie es?').trim();

    if (especie.isNotEmpty) {
      break;
    }

    print('La especie no puede');
  }
  

  int edad;
  while (true) {
    String textoEdad = leerTexto('¿Que edad tiene?');
    int? edadIngresada = int.tryParse(textoEdad);

    if (edadIngresada != null && edadIngresada >= 0) {
      edad = edadIngresada;
      break;
    }

    print('Escribe una edad valida');
  }

  print('Edad registrada: $edad');
 
  String textoAntecedentes = leerTexto('Escribe sus antecedentes separados por comas: ');

  List<String> antecedentes = textoAntecedentes
  .split(',')
  .map((antecedente) => antecedente.trim())
  .where((antecedente) => antecedente.isNotEmpty)
  .toList();

  print('Antecedentes registrados: ${antecedentes.join(', ')}');

  String motivoConsulta = leerTexto('¿Que le pasa a tu peludito?');
  print('El motivo de consulta es: $motivoConsulta');

  String diaCita = leerTexto('¿Para que dia requiere la cita?');
  print('La cita quedo  asigniada para el dia: $diaCita');

  Mascota paciente = Mascota(
  nombre: nombre, 
  especie: especie, 
  edad: edad, 
  antecedenteMedico: antecedentes, 
  motivoConsulta: motivoConsulta, 
  diaCita: diaCita,
  );

  pacientes.add(paciente);

  print('\n¡Paciente registrado correctamente!');
  paciente.mostrarInformacion();

}

void consultarPacientes(List<Mascota> pacientes) {
  if (pacientes.isEmpty) {
    print('\nTodavia no hay pacientes registrados.');
    return;
  }

  print('\n---PACIENTES REGISTRADOS---');
  for (Mascota paciente in pacientes) {
    paciente.mostrarInformacion();
    print('');
  }
}

void buscarPaciente(List<Mascota> pacientes) {

  if (pacientes.isEmpty) {
    print('\nTodavia no hay pacientes registrados.');
    return;
  }

  String nombreBuscado = leerTexto('Nombre del paciente:')
  .trim();

  bool encontrado = false;

  for (Mascota paciente in pacientes) {
    if (paciente.nombre.trim().toLowerCase() == nombreBuscado.trim().toLowerCase()) {
      paciente.mostrarInformacion();
      encontrado = true;
    }
  }

  if (!encontrado) {
    print('No se encontro un paciente con ese nombre');
  }
}

void modificarPaciente(List<Mascota> pacientes) {
  String nombreBuscado = leerTexto('Nombre del paciente que necesitas modificar')
  .trim();

  Mascota? pacienteEncontrado;

  for (Mascota paciente in pacientes) {
    if (paciente.nombre.trim() == nombreBuscado) {
    pacienteEncontrado = paciente;
    break;
  }}

  if (pacienteEncontrado == null) {
    print('No se encontro ese paciente.');
    return;
  }

  pacienteEncontrado.nombre = leerTexto('Nuevo nombre: ');
  pacienteEncontrado.especie = leerTexto('Nueva especie: ');

  while (true) {
    String textoEdad = leerTexto('Nueva edad: ');
    int? nuevaEdad = int.tryParse(textoEdad);

    if (nuevaEdad !=null && nuevaEdad >= 0) {
      pacienteEncontrado.edad = nuevaEdad;
      break;
    }

    print('Escribe una edad valida utilizando numeros enteros');
  }

  String textoAntecedentes = leerTexto('Nuevos antecedentes, no olvides separarlos por comas:');
  pacienteEncontrado.antecedenteMedico = textoAntecedentes
  .split(',')
  .map ((antecedente) => antecedente.trim())
  .where ((antedecedente) => antedecedente.isNotEmpty)
  .toList();

  pacienteEncontrado.motivoConsulta = leerTexto('Nuevo motivo de consulta: ');
  pacienteEncontrado.diaCita = leerTexto('Reagendamiendo de cita: ');

  print('La informacion del paciente ha sido actualizada: ');
  pacienteEncontrado.mostrarInformacion();
  
}

void eliminarPaciente(List<Mascota> pacientes) {
  if (paciente.isEmpty) {
    print('Todavia no hay pacientes registrados');
    return;
  }

  String nombreBuscado = leerTexto('Nombre del paciente que quieres eliminar del registro:')
  .trim();

  Mascota? pacienteAEliminar;

  for(Mascota paciente in paciente) {
    if (paciente.nombre.trim() == nombreBuscado) {
      pacienteAEliminar = paciente;
      break;
    }
  }

  if (pacienteAEliminar == null) {
    print('Paciente no encontrado');
    return;
  }

  paciente.remove(pacienteAEliminar);
    print('Se eliminp correctamente');
}

void mostrarResumen(List<Mascota> pacientes) {
  if (pacientes.isEmpty) {
    print('Todavia no hay pacientes registrados');
    return;
  }

  Set<String> especies = {};
  Map<String, int> cantidadPorEspecie = {};

  for (Mascota paciente in pacientes) {
    especies.add(paciente.especie);

    cantidadPorEspecie[paciente.especie] = (cantidadPorEspecie[paciente.especie] ?? 0) + 1;
  }

  print('\n---RESUMEN DE PACIENTES---');
  print('Total de pacientes: ${pacientes.length}');
  print('Especies registradas: ${especies.join(',')}');
  print('Paciente por especie:');

  for (String especie in cantidadPorEspecie.keys) {
    print('$especie: ${cantidadPorEspecie[especie]}');
  }

}







/* prueba
void main() {
  Mascota mascota1 = Mascota(
    nombre: 'Mateo', 
    especie: 'Perro',
    edad: 5, 
    antecedenteMedico: ['Alergias a las pulgas', 'Dermatitis atópica', 'Vacunas al día'],
    motivoConsulta:  'Se muerde mucho las patas',
    diaCita:  'lunes 12 de octubre'
    );
  mascota1.mostrarInformacion();
}*/
