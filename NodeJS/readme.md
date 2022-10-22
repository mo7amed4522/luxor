app.use(express.json()); 
 ===
 app.use((req, res, next) =>{
    req.on('dara', (chunk) =>{
       req.body = JSON.parse(chunk.toString());
       next();
    });
 });

 chunk = 


 // function protect data 

 encrypt("kahled123").then((hash) =>{
    return decryptonencrypt(hash);
}).then(console.log());
