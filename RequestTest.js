// Need to use "npm install request".
var http = require('http');
var request = require('request');
var url = 'http://xxx.xxx.xx.xx/';
var count = 10;

for(var i = 1; i <= count; i++)
{
  request(url, function(err, res, body){
    console.log(res.statusCode);
  });
}

