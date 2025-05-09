import 'dart:io';
import 'dart:isolate';
import 'Cliente.dart';
import 'Deposito.dart';
import 'Transferencia.dart';

final String linhas = "-"*10;

void infoManager({int option = 0, Cliente? cliente}){


  //////////////////////
  ///Opções de escolha//                             
  //////////////////////
  if (option == 0){print("$linhas\nMENU CAIXA ELETRÔNICO\n1- Depósito\n2- Transferência\n3- Fatura\n4- Sair\n$linhas\n$linhas");}


  /////////////
  ///Depósito//
  /////////////
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


  //////////////////
  ///Transferência//
  //////////////////
  else if (option == 2){
   stdout.write("$linhas\n$linhas\nDepósito\nInsira o valor para transferência: R\$ ");
    dynamic value = stdin.readLineSync();
    value = double.parse(value);
    if (cliente != null){
        Transferencia transferencia = new Transferencia(valor: value, cliente: cliente);
        print("Saldo antigo: R\$${cliente.saldo + value}. Saldo atual: R\$${cliente.saldo}\n$linhas\n$linhas");
    }
    else{
        print("Transferência inválida!\n$linhas\n$linhas");
    }
  }


  ///////////
  ///Fatura//
  ///////////
  else if (option == 3){
    print("${"-"*10}\nFatura\n${"-"*10}");
  }


  ///////////////
  ///Despedida//
  /////////////
  else if (option == 4){
    print("${"-"*10}\nAté a próxima!");
  }
  ///////////////////////////////////////
}