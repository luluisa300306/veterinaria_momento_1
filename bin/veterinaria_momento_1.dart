class Mascota {
  String nombre;
  String especie; 
  int edad; 
  List<String> antecedenteMedico;
  String motivoConsulta;
  String diaCita;

  Mascota (this.nombre, this.especie, this.edad, this.antecedenteMedico, this.motivoConsulta, this.diaCita);

  void mostrarInformacion() {
    print('$nombre - especie - edad - antecedenteMedico - motivoConsulta - diaCita');
  }
}

