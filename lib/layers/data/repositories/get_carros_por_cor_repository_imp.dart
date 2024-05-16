import 'package:estudos_clean_arch/layers/data/dtos/carro_dto.dart';
import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  @override
  CarroEntity call(String cor) {
    final json = {
      'placaCarro': 'AVS123',
      'quantidadeDePortas': 4,
      'valorFinal': 10000.00,
    };
    return CarroDto.fromMap(json);
  }
}
