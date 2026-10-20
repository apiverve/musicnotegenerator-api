Music Note Generator API
============

Music Note Generator is a musical note generator API that creates high-quality WAV audio files of musical notes with precise frequency generation, plus customizable duration on paid plans.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-musicnotegenerator.svg)](https://pypi.org/project/apiverve-musicnotegenerator/)

This is a Python wrapper for the [Music Note Generator API](https://apiverve.com/marketplace/musicnotegenerator?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-musicnotegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-musicnotegenerator
```

---

## Configuration

Before using the Music Note Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Music Note Generator API documentation is found here: [https://docs.apiverve.com/ref/musicnotegenerator](https://docs.apiverve.com/ref/musicnotegenerator?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `MusicnotegeneratorAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient, MusicnotegeneratorAPIClientError

api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except MusicnotegeneratorAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient, MusicnotegeneratorAPIClientError

api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except MusicnotegeneratorAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient, MusicnotegeneratorAPIClientError

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

# Using context manager ensures proper cleanup
with MusicnotegeneratorAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except MusicnotegeneratorAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient

# Enable debug mode
api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient

api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")

query = {
    "note": "C",
    "octave": 4,
    "duration": 1
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
