import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/core/failure/failure.dart';
import 'package:student_clean_arch/features/auth/domain/entity/student_entity.dart';

import '../repository/i_student_repository.dart';

class StudentLocalRepositoryImpl implements IStudentRepository {
  @override
  Future<Either<Failure, bool>> addBatch(StudentEntity student) {
    // TODO: implement addBatch
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<StudentEntity>>> getAllStudent() {
    // TODO: implement getAllStudent
    throw UnimplementedError();
  }
}
