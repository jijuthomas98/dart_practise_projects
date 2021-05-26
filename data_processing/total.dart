import 'dart:io';

//read file input line by line .... lines = File(input).readAsLinesSync
//durationByTag = empty map
//remove first line
//for (line in lines)
//  values = line.split(,)
//  duration = values[3]
//  tag = values[5]
//  durationByTag[tag] = duration
//print(durationByTag)
void main(List<String> arg) {
  if (arg.isEmpty) {
    print('input_file.csv not added');
    exit(1);
  }
  final inputFile = arg.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, dynamic>{};
  var totalDuration = 0.0;
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');
    final durationAsString = values[3].replaceAll('"', '');
    final duration = double.parse(durationAsString);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }

    totalDuration += duration;
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormated = entry.value.toString();
    final tag = entry.key;
    print('$tag => Duration : $durationFormated');
    print('total duration : $totalDuration');
  }
}
