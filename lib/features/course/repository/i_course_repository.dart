import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/core/failure/failure.dart';
import 'package:student_clean_arch/features/auth/domain/entity/course_intentity.dart';

abstract class ICourseRepository {
  Future<Either<Failure, List<CourseEntity>>> getAllCourses();
  Future<Either<Failure, bool>> addCourse(CourseEntity course);
}
