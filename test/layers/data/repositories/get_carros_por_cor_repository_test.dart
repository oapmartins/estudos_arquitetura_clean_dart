import 'package:estudos_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorRepository getCarrosPorCorRepository = GetCarrosPorCorRepositoryImp();

  test('Devolva um carro independente da cor', () {
    var result = getCarrosPorCorRepository('rosa');
    expect(result, isNotNull);
  });
}
