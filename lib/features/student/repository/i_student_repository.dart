import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/core/failure/failure.dart';
import 'package:student_clean_arch/features/auth/domain/entity/student_entity.dart';

abstract class IStudentRepository {
  Future<Either<Failure, List<StudentEntity>>> getAllStudent();
  Future<Either<Failure, bool>> addBatch(StudentEntity student);
}
