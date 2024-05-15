import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudos_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:estudos_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma instância de carro independente da cor', () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final result = getCarrosPorCorUseCase('azul');
    expect(result, isInstanceOf<CarroEntity>());
  });

  test('Deve retornar uma carro de 4 portas quando vermelho', () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final result = getCarrosPorCorUseCase('vermelho');
    expect(result.qtdePortas, 4);
  });

  test('Deve retornar uma carro de 2 portas quando qualquer outra cor', () {
    GetCarrosPorCorUseCase getCarrosPorCorUseCase = GetCarrosPorCorUseCaseImp();
    final result = getCarrosPorCorUseCase('verde');
    expect(result.qtdePortas, 2);
  });
}
