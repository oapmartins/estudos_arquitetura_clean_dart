import 'package:estudos_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:estudos_clean_arch/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    'placaCarro': 'ABC123',
    'quantidadeDePortas': 4,
    'valorFinal': 50000.00,
  };

  final jsonAny = {
    'placaCarro': 'QWE123',
    'quantidadeDePortas': 2,
    'valorFinal': 200000.00,
  };

  @override
  CarroDto call(String cor) {
    if (cor.contains('vermelho')) {
      return CarroDto.fromMap(jsonVermelho);
    }
    return CarroDto.fromMap(jsonAny);
  }
}
