Music Note Generator API
============

Music Note Generator creates high-quality WAV audio files of musical notes with precise frequency generation and customizable duration.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Music Note Generator API](https://apiverve.com/marketplace/musicnotegenerator?utm_source=pypi&utm_medium=readme)

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

Before using the musicnotegenerator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

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

The Music Note Generator API documentation is found here: [https://docs.apiverve.com/ref/musicnotegenerator](https://docs.apiverve.com/ref/musicnotegenerator?utm_source=pypi&utm_medium=readme).
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
      "audioFile": "d37525eb-113e-4ee5-9d66-36c11a8cc6bc.wav",
      "format": ".wav",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/musicnotegenerator/d37525eb-113e-4ee5-9d66-36c11a8cc6bc.wav?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1763589297&Signature=OOhnvCAiyt93A8jiQIcpgWIQEa2TDdGJYY4yF57AeGnNhH6baDldU8RmhBdZ8%2B8%2Ff1K6uA5Q7wKA0MNijeW%2BdjeWLhuirqhokHAWUjemKgOMNhheP%2BA7E0cDEiXxgWv1x9gBdpd97EgoO1u3NZGJfOyhoCOj%2FhZO1aVFMWd9ciW2EJxgGjofCCvPlwlyt6cUKXP61qyh1ULk0Pq1fpLaNXLSTYPof3LWinTVaRO6ffDA0VgHlvndRQRysr%2BKCdt7lYv6z156hAUPBq7s3cXoUFpt1zTxpjxOY2BQQvkFleJBxb9yhDXLjLMX7pbkAVnkEaXAE3OdpeOhNCxtDgAamQ%3D%3D",
      "duration": "1.00s",
      "sampleRate": "44100Hz",
      "bitDepth": "16-bit",
      "expires": 1763589297902
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
