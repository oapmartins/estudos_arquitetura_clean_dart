class CarroEntity {
  String placa;
  int qtdePortas;
  double valor;

  CarroEntity({
    required this.placa,
    required this.qtdePortas,
    required this.valor,
  });

  double get valorReal {
    return valor * qtdePortas;
  }

  void aplicarDesconto() {
    const valorDesconto = 0.02;
    if (valorReal > 10000) {
      valor = valor - (valor * valorDesconto);
    }
  }
}
