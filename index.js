import express from "express";
import cors from "cors";
import BusinessRoute from "./routes/BusinessRoute.js";
const app = express();
app.use(cors());
app.use(express.json());
app.use(BusinessRoute);

app.listen(5000, () => console.log('server up and running ...'))