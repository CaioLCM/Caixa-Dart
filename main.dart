// criar um programa que simule um caixa eletronico 
// POO
// FUNÇÕES
// 3 BRANCHES
import 'dart:io';

void infoManager({int option = 0}){
  if (option == 0){print("${"-"*10}\nMENU CAIXA ELETRONICO\n1- Depósito\n2- Transferência\n3- Fatura\n4- Sair\n${"-"*10}");}
  else if (option == 1){
    print("");
  }
}
main (){
  dynamic choice;
  while (choice != 4){
    infoManager();
    choice = stdin.readLineSync();
    choice = int.parse(choice);
  }
  print("${"-"*10}\nAté a próxima!");
}