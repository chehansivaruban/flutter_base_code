import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_failure.freezed.dart';

@freezed
class StorageFailure with _$StorageFailure{
  const factory StorageFailure.notFound() = _NotFound;
  
  const factory StorageFailure.unableToUpdate() = _UnableToUpdate;

  const factory StorageFailure.unableToCreate() = _UnableToCreate;

  const factory StorageFailure.unableToDelete() = _UnableToDelete;
}