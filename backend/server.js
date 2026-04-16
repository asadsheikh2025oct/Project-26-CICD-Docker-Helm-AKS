const http = require('http');
const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json', 'Access-Control-Allow-Origin': '*' });
    res.end(JSON.stringify({ temp: "22°C", condition: "Sunny", city: "Cloud City" }));
});
server.listen(8080, () => console.log('Backend running on port 8080'));