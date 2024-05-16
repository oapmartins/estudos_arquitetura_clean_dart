// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:estudos_clean_arch/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placaCarro;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placaCarro,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdePortas: quantidadeDePortas,
          placa: placaCarro,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placaCarro': placaCarro,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
    };
  }

  factory CarroDto.fromMap(Map<String, dynamic> map) {
    return CarroDto(
      placaCarro: map['placaCarro'] as String,
      quantidadeDePortas: map['quantidadeDePortas'] as int,
      valorFinal: map['valorFinal'] as double,
    );
  }
}
