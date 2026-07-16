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
        /// </summary>
        [JsonProperty("note")]
        public string Note { get; set; }

        /// <summary>
        /// Octave number
        /// </summary>
        [JsonProperty("octave")]
        public int? Octave { get; set; }

        /// <summary>
        /// Duration in seconds
        /// </summary>
        [JsonProperty("duration")]
        public double? Duration { get; set; }
    }
}
