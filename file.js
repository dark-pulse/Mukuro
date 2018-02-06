var exec = require('child_process').exec

exec('mukuro.rb', function (error, stdout, stderr) {
  console.log('stdout: ' + stdout);
  console.log('stderr: ' + stderr);
  console.log('error: ' + error);
});