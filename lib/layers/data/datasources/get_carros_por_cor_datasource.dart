import 'package:estudos_clean_arch/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorDataSource {
  CarroDto call(String cor);
}
