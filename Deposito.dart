import 'Cliente.dart';

class Deposito {
  double valor;
  Cliente cliente;
  Deposito({required this.valor, required this.cliente}){
    if (this.valor >= 0){
      cliente.saldo = valor;
    }
    else {
      cliente.saldo = 0;
    }
  }
}