import 'Cliente.dart';
import 'Deposito.dart';
import 'Transferencia.dart';

class Historico {
  Cliente cliente;
  int _contador = 1;
  List<String> _historico = [];
  Historico({required this.cliente});
  void adicionar(Object action){
    if (action is Transferencia){
      print("Transferência adicionada");
      _historico.add("${_contador}- Transferência no valor de ${action.valor} - Saldo antes: ${cliente.saldo + action.valor} -- Saldo depois: ${cliente.saldo}");
      _contador ++;
    }
    else if (action is Deposito){
      print("Depósito adicionado");
       _historico.add("${_contador}- Depósito no valor de ${action.valor} - Saldo antes: ${cliente.saldo - action.valor} -- Saldo depois: ${cliente.saldo}");
      _contador ++;
    }
  }

  String get historico {
    String textoFinal = "";
    for (String item in _historico){
      textoFinal += item + "\n";
    }
    return textoFinal;
  }
  
}