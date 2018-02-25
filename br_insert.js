var fs = require('fs');
var data = fs.readFileSync('data.html', 'utf8');
var outData = [];
var dSplit = data.split('\r\n');
for (var line in dSplit) {
  if (~dSplit[line].indexOf('<br>')) {
    console.log(dSplit[line] + "</br>");
  } else {
    console.log(dSplit[line]);
  }
}
//console.log(outData);
