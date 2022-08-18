import std.base64;
import std.stdio;
import std.string;
import std.algorithm;

int print_usage_and_exit(bool error = false) {
  writeln("
      usage: unbase64 [string ...] [--help|-h]\n");
  writeln("
      UNBASE64 is a program which is basically the equivalent to 'base64 -d'.
      It decodes base64-encoded strings and prints them.

      It does allow multiple strings, so statements such as:

      unbase64 <str1> <str2> 

      would return:
      
      <decoded str1>
      <decoded str2>
    ");
  if (error == true) return 1;
  return 0;
}

int main(string[] args) {
  string[] conv_queue;
  foreach (string arg ; remove(args, 0)) {
    if (arg == "--help" || arg == "-h") {
      return print_usage_and_exit();
    } else {
      conv_queue ~= arg;
    }
  }
  foreach (string str ; conv_queue) {
    try {
      writeln(cast(string)Base64.decode(str));
    } catch (Base64Exception s) {
      writeln("unbase64: error: " ~ toLower(s.msg));
    }
  }
  return 0;
}

