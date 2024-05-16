import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp implements SalvarCarroFavoritoRepository {
  @override
  Future<bool> call(CarroEntity carroEntity) async {
    return carroEntity.qtdePortas > 1;
  }
}