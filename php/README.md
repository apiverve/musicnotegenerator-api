# Music Note Generator API - PHP Package

Music Note Generator is a musical note generator API that creates high-quality WAV audio files of musical notes with precise frequency generation, plus customizable duration on paid plans.

## Installation

Install via Composer:

```bash
composer require apiverve/musicnotegenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Musicnotegenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'note' => 'C',
    'octave' => 4,
    'duration' => 1
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Musicnotegenerator\Client;
use APIVerve\Musicnotegenerator\Exceptions\APIException;
use APIVerve\Musicnotegenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['note' => 'C', 'octave' => 4, 'duration' => 1]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/musicnotegenerator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/musicnotegenerator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/musicnotegenerator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
