/// Response models for the Music Note Generator API.

/// API Response wrapper.
class MusicnotegeneratorResponse {
  final String status;
  final dynamic error;
  final MusicnotegeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MusicnotegeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MusicnotegeneratorResponse.fromJson(Map<String, dynamic> json) => MusicnotegeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MusicnotegeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Music Note Generator API.

class MusicnotegeneratorData {
  String? note;
  num? octave;
  num? frequency;
  num? duration;
  MusicnotegeneratorDataAudio? audio;

  MusicnotegeneratorData({
    this.note,
    this.octave,
    this.frequency,
    this.duration,
    this.audio,
  });

  factory MusicnotegeneratorData.fromJson(Map<String, dynamic> json) => MusicnotegeneratorData(
      note: json['note'],
      octave: json['octave'],
      frequency: json['frequency'],
      duration: json['duration'],
      audio: json['audio'] != null ? MusicnotegeneratorDataAudio.fromJson(json['audio']) : null,
    );
}

class MusicnotegeneratorDataAudio {
  String? audioFile;
  String? format;
  String? downloadURL;
  String? duration;
  String? sampleRate;
  String? bitDepth;
  num? expires;

  MusicnotegeneratorDataAudio({
    this.audioFile,
    this.format,
    this.downloadURL,
    this.duration,
    this.sampleRate,
    this.bitDepth,
    this.expires,
  });

  factory MusicnotegeneratorDataAudio.fromJson(Map<String, dynamic> json) => MusicnotegeneratorDataAudio(
      audioFile: json['audioFile'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      duration: json['duration'],
      sampleRate: json['sampleRate'],
      bitDepth: json['bitDepth'],
      expires: json['expires'],
    );
}

class MusicnotegeneratorRequest {
  String note;
  int? octave;
  double? duration;

  MusicnotegeneratorRequest({
    required this.note,
    this.octave,
    this.duration,
  });

  Map<String, dynamic> toJson() => {
      'note': note,
      if (octave != null) 'octave': octave,
      if (duration != null) 'duration': duration,
    };
}
