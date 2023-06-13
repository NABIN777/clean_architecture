import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/core/failure/failure.dart';
import 'package:student_clean_arch/features/auth/domain/entity/batch_entity.dart';
import 'package:student_clean_arch/features/batch/repository/i_batch_repository.dart';

class BatchLocalRepositoryImpl implements IBatchRepository {
  @override
  Future<Either<Failure, bool>> addBatch(BatchEntity batch) {
    // TODO: implement addBatch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BatchEntity>>> getAllBatches() {
    // TODO: implement getAllBatches
    throw UnimplementedError();
  }
}
