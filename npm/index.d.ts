declare module '@apiverve/musicnotegenerator' {
  export interface musicnotegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface musicnotegeneratorResponse {
    status: string;
    error: string | null;
    data: MusicNoteGeneratorData;
    code?: number;
  }


  interface MusicNoteGeneratorData {
      note:      string;
      octave:    number;
      frequency: number;
      duration:  number;
      audio:     Audio;
  }
  
  interface Audio {
      audioFile:   string;
      format:      string;
      downloadURL: string;
      duration:    string;
      sampleRate:  string;
      bitDepth:    string;
      expires:     number;
  }

  export default class musicnotegeneratorWrapper {
    constructor(options: musicnotegeneratorOptions);

    execute(callback: (error: any, data: musicnotegeneratorResponse | null) => void): Promise<musicnotegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: musicnotegeneratorResponse | null) => void): Promise<musicnotegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<musicnotegeneratorResponse>;
  }
}
