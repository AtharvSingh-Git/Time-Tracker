import 'dart:io';

void main(List<String>argument){
  if (argument.isEmpty) {
    print('Usage: dart totals.dart <input.csv>');
    exit(1);
  }
  final inputfile = argument.first;
  final lines = File(inputfile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  var  totalDuration= 0.0;
  lines.removeAt(0);
  for(var line in lines) {
    final values = line.split(',');
    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if(previousTotal == null) {
      totalDurationByTag[tag] = duration;
    }else {
      totalDurationByTag[tag] = previousTotal + duration ;
    }
    totalDuration += (duration);
  }
  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1); // fixing it to one decimal place
    final tag = entry.key == '' ? 'Unallocated' : entry.key;
    print('${tag}: ${durationFormatted}h');
  }
    print('Total Time: ${totalDuration.toStringAsFixed(1)}h');
} 
/* 
logic=>

lines = readFile(inputFile)
durationByTag = empty map
lines.removeFirst() => removing the header 
for (line in lines)
    values = line.split(',')
    duration = value[3]
    tag = values[5]
    update{durationByTag[tag],duration}
printAll (durationByTag)
 */