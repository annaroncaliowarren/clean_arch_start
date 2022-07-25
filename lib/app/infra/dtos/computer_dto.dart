import 'dart:convert';

import 'package:clean_arch_start/app/domain/entities/computer_entity.dart';

class ComputerDto extends ComputerEntity {
  String computerModel;
  String computerBrand;
  double computerPrice;
  int computerQuantity;
  bool computerIsNew;

  ComputerDto({
    required this.computerModel,
    required this.computerBrand,
    required this.computerPrice,
    required this.computerQuantity,
    required this.computerIsNew,
  }) : super(
          model: computerModel,
          brand: computerBrand,
          price: computerPrice,
          quantity: computerQuantity,
          isNew: computerIsNew,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'computerModel': computerModel});
    result.addAll({'computerBrand': computerBrand});
    result.addAll({'computerPrice': computerPrice});
    result.addAll({'computerQuantity': computerQuantity});
    result.addAll({'computerIsNew': computerIsNew});
  
    return result;
  }

  factory ComputerDto.fromMap(Map<String, dynamic> map) {
    return ComputerDto(
      computerModel: map['computerModel'] ?? '',
      computerBrand: map['computerBrand'] ?? '',
      computerPrice: map['computerPrice']?.toDouble() ?? 0.0,
      computerQuantity: map['computerQuantity']?.toInt() ?? 0,
      computerIsNew: map['computerIsNew'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ComputerDto.fromJson(String source) => ComputerDto.fromMap(json.decode(source));
}
