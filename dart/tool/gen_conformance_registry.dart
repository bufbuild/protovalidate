// Generates bin/conformance_types.g.dart: a list of factories for every
// generated conformance case message, used to unpack Any values in the
// executor (Dart has no dynamic-message support).
import 'dart:io';

void main() {
  const genRoot = 'lib/src/gen';
  const casesDir = '$genRoot/buf/validate/conformance/cases';
  final files = Directory(casesDir)
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.pb.dart'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));

  final imports = StringBuffer();
  final factories = <String>[];
  final classRe = RegExp(r'^class ([A-Za-z0-9_]+) extends \$pb\.GeneratedMessage',
      multiLine: true);
  for (var i = 0; i < files.length; i++) {
    final file = files[i];
    final classes = classRe
        .allMatches(file.readAsStringSync())
        .map((m) => m.group(1)!)
        .toList();
    if (classes.isEmpty) continue; // enum-only / import-only file
    final packagePath =
        'package:protovalidate/${file.path.substring('lib/'.length)}';
    imports.writeln("import '$packagePath' as f$i;");
    for (final name in classes) {
      factories.add('f$i.$name.new');
    }
  }

  final out = StringBuffer()
    ..writeln('// This is a generated file - do not edit.')
    ..writeln('//')
    ..writeln('// Regenerate with: dart run tool/gen_conformance_registry.dart')
    ..writeln()
    ..writeln("import 'package:protobuf/protobuf.dart';")
    ..writeln()
    ..write(imports)
    ..writeln()
    ..writeln('/// Factories for every conformance case message, keyed later by')
    ..writeln('/// their fully-qualified name to resolve Any type URLs.')
    ..writeln('final List<GeneratedMessage Function()> conformanceFactories = [')
    ..writeln('  ${factories.join(',\n  ')},')
    ..writeln('];');

  File('bin/conformance_types.g.dart').writeAsStringSync(out.toString());
  stdout.writeln('Wrote bin/conformance_types.g.dart with '
      '${factories.length} types from ${files.length} files.');
}
