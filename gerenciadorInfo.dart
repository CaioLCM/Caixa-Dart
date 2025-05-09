import 'dart:io';
import 'Cliente.dart';
import 'Deposito.dart';

final String linhas = "-"*10;

void infoManager({int option = 0, Cliente? cliente}){
  ///////////////////////////////////
  if (option == 0){print("$linhas\nMENU CAIXA ELETRONICO\n1- Depósito\n2- Transferência\n3- Fatura\n4- Sair\n$linhas\n$linhas");}
  ///////////////////////////////////
  else if (option == 1){
    stdout.write("$linhas\n$linhas\nDepósito\nInsira o valor para depósito: R\$ ");
    dynamic value = stdin.readLineSync();
    value = double.parse(value);
    if (cliente != null){
        Deposito deposito = new Deposito(valor: value, cliente: cliente);
        print("Saldo antigo: R\$${cliente.saldo - value}. Saldo atual: R\$${cliente.saldo}\n$linhas\n$linhas");
    }
    else{
        print("Depósito inválido!\n$linhas\n$linhas");
    }
  }
  ///////////////////////////////////////
  else if (option == 2){
    print("${"-"*10}\nTransferência\n${"-"*10}");
  }
  ///////////////////////////////////////
  else if (option == 3){
    print("${"-"*10}\nFatura\n${"-"*10}");
  }
  ///////////////////////////////////////
  else if (option == 4){
    print("${"-"*10}\nAté a próxima!");
  }
  ///////////////////////////////////////
}