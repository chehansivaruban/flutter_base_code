import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_zone_info.freezed.dart';

@freezed
class TimeZoneInfo with _$TimeZoneInfo {
  const factory TimeZoneInfo({
    required int id,
    required String timeZoneId,
    required String displayName,
    required String utcOffset,
    required bool isSupportDayLightSaving,
  }) = _TimeZoneInfo;

  factory TimeZoneInfo.empty() => const TimeZoneInfo(
        id: 0,
        timeZoneId: '',
        displayName: '',
        utcOffset: '',
        isSupportDayLightSaving: false,
      );
}
