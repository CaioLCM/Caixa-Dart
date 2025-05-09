// criar um programa que simule um caixa eletronico 
// POO
// FUNÇÕES
// 3 BRANCHES
import 'dart:io';

import 'Cliente.dart';
import 'gerenciadorInfo.dart';
main (){

    dynamic choice;
    Cliente cliente = new Cliente("Caio");

    //////////////////////////
    //Sistema de comunicação//
    //////////////////////////
    
    infoManager(); // Vai retornar o menu principal

    while (choice != 4){
      stdout.write("Digite a sua opção: ");
      choice = stdin.readLineSync();
      choice = int.parse(choice);
      infoManager(
        option: choice,
        Cliente: cliente
      );
    }

}