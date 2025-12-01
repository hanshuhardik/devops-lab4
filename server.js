const exp=require("express")
const app=exp()
const p=8000

app.get("/",(req,res)=>{
res.send("lab-4");
})
app.listen(p,()=>{
console.log("port running on 8000);
});
