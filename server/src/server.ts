import fastify from "fastify";
import 'dotenv/config'

import cors from '@fastify/cors'
import { routes } from "./routes";

const app = fastify()

app.register(cors)
app.register(routes) 

app.listen({
  port:Number(process.env.PORT) ,
  host: '0.0.0.0'
}).then(() => {
  console.log(`HTTP Server running ${process.env.PORT}! `)
})