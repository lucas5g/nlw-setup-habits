import fastify from "fastify";

import cors from '@fastify/cors'
import { routes } from "./routes";

const app = fastify()

app.register(cors)
app.register(routes) 

app.listen({
  port:Number(process.env.PORT) ?? 8000
}).then(() => {
  console.log(`HTTP Server running ${process.env.PORT}! `)
})