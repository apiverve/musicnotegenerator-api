declare module '@apiverve/musicnotegenerator' {
  export interface musicnotegeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface musicnotegeneratorResponse {
    status: string;
    error: string | null;
    data: MusicNoteGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MusicNoteGeneratorData {
      note:      null | string;
      octave:    number | null;
      frequency: number | null;
      duration:  number | null;
      audio:     Audio;
  }
  
  interface Audio {
      audioFile:   null | string;
      format:      null | string;
      downloadURL: null | string;
      duration:    null | string;
      sampleRate:  null | string;
      bitDepth:    null | string;
      expires:     number | null;
  }

  export default class musicnotegeneratorWrapper {
    constructor(options: musicnotegeneratorOptions);

    execute(callback: (error: any, data: musicnotegeneratorResponse | null) => void): Promise<musicnotegeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: musicnotegeneratorResponse | null) => void): Promise<musicnotegeneratorResponse>;
    execute(query?: Record<string, any>): Promise<musicnotegeneratorResponse>;
  }
}
