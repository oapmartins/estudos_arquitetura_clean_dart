import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/get_carros_por_cor_repository.dart';
import 'package:estudos_clean_arch/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  final GetCarrosPorCorRepository _getCarrosPorCorRepository;
  GetCarrosPorCorUseCaseImp(this._getCarrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorRepository(cor);
  }
}
