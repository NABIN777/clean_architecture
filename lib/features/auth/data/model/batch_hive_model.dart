import 'package:hive/hive.dart';
import 'package:student_clean_arch/config/constants/hive_table_constant.dart';
import 'package:student_clean_arch/features/auth/domain/entity/batch_entity.dart';
import 'package:uuid/uuid.dart';

part 'batch_hive_model.g.dart';

@HiveType(typeId: HiveTableConstant.batchTableId)
class BatchHiveModel {
  @HiveField(0)
  final String? batchId;

  @HiveField(1)
  final String batchName;

  BatchHiveModel.empty() : this(batchId: '', batchName: '');

  BatchHiveModel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? const Uuid().v4();

  @override
  String toString() {
    return 'studentId: $batchId, fNam: $batchName';
  }

//// convert Hive object to eNTINITY
  BatchEntity toEntity() => BatchEntity(
        batchId: batchId,
        batchName: batchName,
      );
///// convert Entinity to Hive object
  BatchHiveModel toHiveModel(BatchEntity entity) =>
      BatchHiveModel(batchName: entity.batchName);

  /// conveert Hive List to Entinity
  List<BatchEntity> toEntityList(List<BatchHiveModel> models) =>
      models.map((model) => model.toEntity()).toList();
}
