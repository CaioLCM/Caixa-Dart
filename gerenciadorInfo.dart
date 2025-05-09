import 'dart:io';
import 'Cliente.dart';
import 'Deposito.dart';
import 'Historico.dart';
import 'Transferencia.dart';

final String linhas = "-"*10;

void infoManager({int option = 0, required Cliente cliente, required Historico historico}){

  //////////////////////
  ///Opções de escolha//                             
  //////////////////////
  if (option == 0){print("$linhas\nMENU CAIXA ELETRÔNICO - USUÁRIO ${(cliente.usuario).toUpperCase()} - SALDO: R\$${cliente.saldo}\n1- Depósito\n2- Transferência\n3- Histórico\n4- Sair\n$linhas\n$linhas\n");}


  /////////////
  ///Depósito//
  /////////////
  else if (option == 1){
    stdout.write("$linhas\n$linhas\nDepósito\nInsira o valor para depósito: R\$ ");
    dynamic value = stdin.readLineSync();
    value = double.parse(value);
    Deposito deposito = new Deposito(valor: value, cliente: cliente);
    historico.adicionar(deposito);
    print("Saldo antigo: R\$${cliente.saldo - value}. Saldo atual: R\$${cliente.saldo}\n$linhas\n$linhas\n");
  }


  //////////////////
  ///Transferência//
  //////////////////
  else if (option == 2){
   stdout.write("$linhas\n$linhas\nTransferência\nInsira o valor para transferência: R\$ ");
    dynamic value = stdin.readLineSync();
    value = double.parse(value);
    Transferencia transferencia = new Transferencia(valor: value, cliente: cliente);
    historico.adicionar(transferencia);
    print("Saldo antigo: R\$${cliente.saldo + value}. Saldo atual: R\$${cliente.saldo}\n$linhas\n$linhas\n");
  }


  //////////////
  ///Histórico//
  //////////////
  else if (option == 3){
    print("${"-"*10}\nHistórico\n${"-"*10}");
    print(historico.historico + "\n");
  }


  ///////////////
  ///Despedida//
  /////////////
  else if (option == 4){
    print("${"-"*10}\nAté a próxima!");
  }
  ///////////////////////////////////////
}