class Cliente {
  String usuario;
  double _saldo = 0;
  Cliente({ required this.usuario});

  double get saldo{
    return _saldo;
  }

  set saldo(double valor){
    _saldo += valor;
  }

}