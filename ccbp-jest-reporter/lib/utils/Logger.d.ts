export declare class Logger {
    static readonly LEVELS: string[];
    static readonly LEVEL_DEFAULT = "info";
    static get get(): Logger;
    static isValidLevel(level: string): boolean;
    static validateLevel(level: string): void;
    private static mLog;
    private mPrefix;
    private mColor;
    private mIsOn;
    private mLevel;
    constructor();
    isTraceEnabled(): boolean;
    isDebugEnabled(): boolean;
    isInfoEnabled(): boolean;
    isWarnEnabled(): boolean;
    isErrorEnabled(): boolean;
    isFatalEnabled(): boolean;
    trace(message: string, ...args: any[]): string;
    debug(message: string, ...args: any[]): string;
    info(message: string, ...args: any[]): string;
    warn(message: string, ...args: any[]): string;
    error(message: string, ...args: any[]): string;
    fatal(message: string, ...args: any[]): string;
    private writeStderr;
    private writeStdout;
    private format;
    private buildPrefix;
    get formatEnabled(): boolean;
    set color(isEnabled: boolean);
    get color(): boolean;
    set on(isOn: boolean);
    get on(): boolean;
    get level(): string;
    get prefix(): boolean;
    set prefix(prefix: boolean);
}