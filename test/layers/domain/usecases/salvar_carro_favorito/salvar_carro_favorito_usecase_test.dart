import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/salvar_carro_favorito_repository.dart';
import 'package:estudos_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:estudos_clean_arch/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.qtdePortas > 1;
  }
}

void main() {
  test('Espero que salve o carro com sucesso', () async {
    SalvarCarroFavoritoUseCase salvarCarroFavoritoUseCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    CarroEntity carroEntity = CarroEntity(placa: 'ASF123', qtdePortas: 4, valor: 12000);
    var result = await salvarCarroFavoritoUseCase(carroEntity);
    expect(result, true);
  });

  test('Espero que não salve o carro se o valor for igual a zero', () async {
    SalvarCarroFavoritoUseCase salvarCarroFavoritoUseCase = SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    );

    CarroEntity carroEntity = CarroEntity(placa: 'ASF123', qtdePortas: 0, valor: 12000);
    var result = await salvarCarroFavoritoUseCase(carroEntity);
    expect(result, false);
  });
}
