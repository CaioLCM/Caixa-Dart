// criar um programa que simule um caixa eletronico 
// POO
// FUNÇÕES
// 3 BRANCHES
import 'dart:io';
import 'Cliente.dart';
import 'Historico.dart';
import 'gerenciadorInfo.dart';

main (){

    dynamic choice;
    Cliente cliente = new Cliente(usuario: "User default");
    Historico historico = new Historico(cliente: cliente);
    //////////////////////////
    //Sistema de comunicação//
    //////////////////////////

    while (choice != 4){
      infoManager(
        cliente: cliente, 
        historico: historico
      ); 
      // Vai retornar o menu principal
      stdout.write("Digite a sua opção: ");
      choice = stdin.readLineSync();
      choice = int.parse(choice);
      infoManager(
        option: choice,
        cliente: cliente,
        historico: historico
      );
    }
}