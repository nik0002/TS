const express = require("express");
const app = express();
//const hbs = require("hbs");
app.set("view engine", "hbs");

var multer = require("multer");
var upload = multer();

const {Client} = require('pg')
const client = new Client({
	user: 'postgres',
	password: 'postgres',
	host: 'localhost',
	port: 5432,
	database: 'TS'
})

function bubbleSort(arr) {
  for (var i = 0, endi = arr.length - 1; i < endi; i++) {
      for (var j = 0, endj = endi - i; j < endj; j++) {
          if (Number(arr[j]) > Number(arr[j + 1])) {
              var swap = arr[j];
              arr[j] = arr[j + 1];
              arr[j + 1] = swap;
          }
      }	
  }
  return arr;
}
function GetPropertyValue(obj1, dataToRetrieve) {
  return dataToRetrieve
    .split('.')
    .reduce(function(o, k) {
      return o && o[k];
    }, obj1)
}
var subs = '';

app.post("/getdata", upload.fields([]), function (request, response) {
 if(!request.body) return response.sendStatus(400);
 subs = request.body.txt.split(' ');
 bubbleSort(subs); 
 client.connect(async function() {
    const rowt = await client.query("SELECT MAX(id) FROM saved")
    maxid = GetPropertyValue(rowt.rows, "0.max")
    console.log('MaxID: ' + maxid);
    if (maxid == undefined | maxid == null) maxid = 0;
    else maxid++;
    for (i = 0; i < subs.length; i++) client.query("insert into saved values ($1, $2)", [maxid, subs[i]]);
  });
 response.send("ok");
});
app.post("/getdata1", upload.fields([]), function (request1, response) {
  if(!request1.body) return response.sendStatus(400);
  client.connect(async function() {
    filtr = Number(request1.body.txt);
    const fil = await client.query(`SELECT number FROM saved WHERE id = ${filtr}`);
    dannie = [];
    for (i = 0; i < fil.rows.length; i++)
      console.log(dannie[i] = GetPropertyValue(fil.rows, `${i}.number`));
    subs = dannie;
  })
  response.send("ok");
})
app.use('/', function (request, response) {
    response.render("TS", {
      subs: subs
    });
  })
app.listen(3000);
