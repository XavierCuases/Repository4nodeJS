import express from "express" 
var app = express()
var port = 3000 || process.env.port

app.get("/", (req,res)=>{
    res.send("HELLO WORD 4")
})

app.listen(port, ()=>{
    console.log("server on port 3000")
})
