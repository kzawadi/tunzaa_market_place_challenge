import 'package:freezed_annotation/freezed_annotation.dart';

part 'tunzaa_failures.freezed.dart';

@freezed
class TunzaaFailures with _$TunzaaFailures {
  // const factory TunzaaFailures() = _TunzaaFailures;

  const factory TunzaaFailures.unknownFailure() = _unknownFailure;
  const factory TunzaaFailures.insufficientPermission() =
      _insufficientPermission;

  const factory TunzaaFailures.serverError() = _serverError;

  const factory TunzaaFailures.serviceUnavailable() = _serviceUnavailable;
}
