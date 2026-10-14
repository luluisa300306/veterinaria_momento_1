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
    print (nombre);
    print (especie);
    print (edad);
    print (antecedenteMedico);
    print (motivoConsulta);
    print (diaCita);
  }
}

String leerTexto(String pregunta) {
  stdout.write(pregunta);
  return stdin.readLineSync() ?? '';
}

void registrarMascota(List<Mascota> pacientes) {
  print('¡Bienvenido al registro de citas para tus peluditos');
  String nombre = leerTexto('¿Como se llama tu peludito?');
  print('Nombre registrado: $nombre');
  
}

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
}
