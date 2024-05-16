import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorRepository {
  CarroEntity call(String cor);
}
