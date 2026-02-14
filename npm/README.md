# Music Note Generator API

Music Note Generator creates high-quality WAV audio files of musical notes with precise frequency generation and customizable duration.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/musicnotegenerator.svg)](https://www.npmjs.com/package/@apiverve/musicnotegenerator)

This is a Javascript Wrapper for the [Music Note Generator API](https://apiverve.com/marketplace/musicnotegenerator?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/musicnotegenerator
```

Using yarn:
```shell
yarn add @apiverve/musicnotegenerator
```

---

## Configuration

Before using the Music Note Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Music Note Generator API documentation is found here: [https://docs.apiverve.com/ref/musicnotegenerator](https://docs.apiverve.com/ref/musicnotegenerator?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const musicnotegeneratorAPI = require('@apiverve/musicnotegenerator');
const api = new musicnotegeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  note: "C",
  octave: 4,
  duration: 1
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  note: "C",
  octave: 4,
  duration: 1
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  note: "C",
  octave: 4,
  duration: 1
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
