import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Espero que a entidade não seja nula', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdePortas: 2,
      valor: 10000,
    );

    expect(carroEntity, isNotNull);
  });

  test('Espero que a quantidade de portas seja maior ou igual a 2', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdePortas: 2,
      valor: 10000,
    );

    expect(carroEntity.qtdePortas, 2);
  });

  test('Espero que o valor real seja 10000', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdePortas: 2,
      valor: 10000,
    );

    expect(carroEntity.qtdePortas, 2);
  });

  test('Espero que o valor valor com desconto seja de 2%', () {
    CarroEntity carroEntity = CarroEntity(
      placa: 'ABC123',
      qtdePortas: 2,
      valor: 20000,
    );
    carroEntity.aplicarDesconto();
    const resultadoEsperado = 19600;

    expect(carroEntity.valor, resultadoEsperado);
  });
}
