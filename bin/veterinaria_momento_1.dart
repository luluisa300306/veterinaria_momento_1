class Mascota {
  String nombre;
  String especie; 
  int edad; 
  List<String> antecedenteMedico;
  String motivoConsulta;
  String diaCita;

  Mascota (this.nombre, this.especie, this.edad, this.antecedenteMedico, this.motivoConsulta, this.diaCita);

  void mostrarInformacion() {
    print('$nombre - $especie - $edad - $antecedenteMedico - $motivoConsulta - $diaCita');
  }
}

void main() {
  Mascota mascota1 = Mascota('Mateo', 'Perro', 5, ['Alergias a las pulgas', 'Dermatitis atópica', 'Vacunas al día'], 'Se muerde mucho las patas', 'lunes 12 de octubre');
  mascota1.mostrarInformacion();
}