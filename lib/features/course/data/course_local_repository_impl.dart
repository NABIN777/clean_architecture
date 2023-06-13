import 'package:dartz/dartz.dart';
import 'package:student_clean_arch/features/auth/domain/entity/course_intentity.dart';

import '../../../core/failure/failure.dart';
import '../repository/i_course_repository.dart';

class CourseLocalRepositoryImpl implements ICourseRepository {
  @override
  Future<Either<Failure, bool>> addCourse(CourseEntity course) {
    // TODO: implement addCourse
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<CourseEntity>>> getAllCourses() {
    // TODO: implement getAllCourses
    throw UnimplementedError();
  }
}
