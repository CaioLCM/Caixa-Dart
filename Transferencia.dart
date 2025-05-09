import 'Cliente.dart';

class Transferencia {
  double valor;
  Cliente cliente;
  Transferencia({required this.valor, required this.cliente}){
    if (this.valor >= 0){
      cliente.saldo = -valor;
    }
    else {
      cliente.saldo = 0;
    }
  }
}