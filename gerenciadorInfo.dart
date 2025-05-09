import 'Cliente.dart';

void infoManager({int option = 0, Cliente? Cliente}){
  if (option == 0){print("${"-"*10}\nMENU CAIXA ELETRONICO\n1- Depósito\n2- Transferência\n3- Fatura\n4- Sair\n${"-"*10}");}
  else if (option == 1){
    print("${"-"*10}\nDepósito\n${"-"*10}");
  }
  else if (option == 2){
    print("${"-"*10}\nTransferência\n${"-"*10}");
  }
  else if (option == 3){
    print("${"-"*10}\nFatura\n${"-"*10}");
  }
  else if (option == 4){
    print("${"-"*10}\nAté a próxima!");
  }
}