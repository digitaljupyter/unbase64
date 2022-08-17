import std.base64;
import std.stdio;
import std.string;

void main(string[] args) {
  if (args.length != 1) {
    try {
      writeln(cast(string)Base64.decode(args[1]));
    } catch (Base64Exception s) {
      writeln("unbase64: error: " ~ toLower(s.msg));
    }
  }
}
