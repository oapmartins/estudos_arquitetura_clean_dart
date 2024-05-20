import 'package:estudos_clean_arch/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:estudos_clean_arch/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:estudos_clean_arch/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:estudos_clean_arch/layers/domain/respositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorDataSource getCarrosPorCorDataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository getCarrosPorCorRepository =
      GetCarrosPorCorRepositoryImp(getCarrosPorCorDataSource);

  test('Devolva um carro independente da cor', () {
    var result = getCarrosPorCorRepository('rosa');
    expect(result, isNotNull);
  });
}
