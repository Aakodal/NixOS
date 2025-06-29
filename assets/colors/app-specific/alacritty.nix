{ base }: {
  primary = {
    background = base.ghostWhite;
    foreground = base.darkSlateGray;
  };

  normal = {
    black =   base.black;
    red =     base.red;
    green =   base.green;
    yellow =  base.yellow;
    blue =    base.blue;
    magenta = base.magenta;
    cyan =    base.cyan;
    white =   base.white;
  };

  bright = {
    black =   base.brightBlack;
    red =     base.brightRed;
    green =   base.brightGreen;
    yellow =  base.brightYellow;
    blue =    base.brightBlue;
    magenta = base.brightMagenta;
    cyan =    base.brightCyan;
    white =   base.brightWhite;
  };

  cursor = {
    text =    base.gainsboro;
    cursor =  base.darkSlateGray;
  };
}
