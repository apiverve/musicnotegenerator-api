Music Note Generator API
============

Music Note Generator creates high-quality WAV audio files of musical notes with precise frequency generation and customizable duration.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Music Note Generator API](https://apiverve.com/marketplace/api/musicnotegenerator)

---

## Installation
	pip install apiverve-musicnotegenerator

---

## Configuration

Before using the musicnotegenerator API client, you have to setup your account and obtain your API Key.  
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Usage

The Music Note Generator API documentation is found here: [https://docs.apiverve.com/api/musicnotegenerator](https://docs.apiverve.com/api/musicnotegenerator).  
You can find parameters, example responses, and status codes documented here.

### Setup

```
# Import the client module
from apiverve_musicnotegenerator.apiClient import MusicnotegeneratorAPIClient

# Initialize the client with your APIVerve API key
api = MusicnotegeneratorAPIClient("[YOUR_API_KEY]")
```

---


### Perform Request
Using the API client, you can perform requests to the API.

###### Define Query

```
query = { "note": "C", "octave": 4, "duration": 1.0 }
```

###### Simple Request

```
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```
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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.