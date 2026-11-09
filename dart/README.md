# Music Note Generator API - Dart/Flutter Client

Music Note Generator is a musical note generator API that creates high-quality WAV audio files of musical notes with precise frequency generation, plus customizable duration on paid plans.

[![pub package](https://img.shields.io/pub/v/apiverve_musicnotegenerator.svg)](https://pub.dev/packages/apiverve_musicnotegenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Music Note Generator API](https://apiverve.com/marketplace/musicnotegenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_musicnotegenerator: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_musicnotegenerator/apiverve_musicnotegenerator.dart';

void main() async {
  final client = MusicnotegeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'note': 'C',
      'octave': 4,
      'duration': 1
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "note": "C",
    "octave": 4,
    "frequency": 261.63,
    "duration": 1,
    "audio": {
      "audioFile": "72510463-6388-4588-8e08-5714f20f9c67.wav",
      "format": ".wav",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/musicnotegenerator/72510463-6388-4588-8e08-5714f20f9c67.wav?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1765925810&Signature=djWUb%2B8QmrAZLTEDiPAIB%2Bx7w7OYyJiClHTcPtkIvvtlKT01z%2FxJMMjUMvUHTx0aRpF94Oq5jdFKBqw2NPKOaEQPNIeF%2BukRt3cS5chrLI3ynvnLobkz4%2FrTGXW8r2BE42oWGMC1xjTJpdU5IMQjhEmWDMRPWzJo5sy6ZQAll5US9DtSVl7Tc2wyHCZRlxcTxlOLPCWv9SZ6Mn8i4kSXITWwp2FaR%2BEdJOi6bpRYkBBmWvnLlAiNFTm44v5QKm7dwXpAAyoidJ4%2Bo%2B2OErXHJ%2BTDMiLwFHZAc4Bt4slYTX5henGIt752fCoj2%2FOaLWSXp%2BnJNFkvKdKxVpDH40y%2FqA%3D%3D",
      "duration": "1.00s",
      "sampleRate": "44100Hz",
      "bitDepth": "16-bit",
      "expires": 1765925810991
    }
  }
}
```

## API Reference

- **API Home:** [Music Note Generator API](https://apiverve.com/marketplace/musicnotegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/musicnotegenerator](https://docs.apiverve.com/ref/musicnotegenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
