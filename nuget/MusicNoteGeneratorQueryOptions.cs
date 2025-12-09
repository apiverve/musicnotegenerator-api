using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MusicNoteGenerator
{
    /// <summary>
    /// Query options for the Music Note Generator API
    /// </summary>
    public class MusicNoteGeneratorQueryOptions
    {
        /// <summary>
        /// Musical note (A-G with optional # or b)
        /// Example: C
        /// </summary>
        [JsonProperty("note")]
        public string Note { get; set; }

        /// <summary>
        /// Octave number (0-8)
        /// Example: 4
        /// </summary>
        [JsonProperty("octave")]
        public string Octave { get; set; }

        /// <summary>
        /// Duration in seconds (0.1-10)
        /// Example: 1.0
        /// </summary>
        [JsonProperty("duration")]
        public string Duration { get; set; }
    }
}
