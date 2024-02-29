import fastify from 'fastify'
import { createPoll } from './routes/createPoll'

const app = fastify()

void app.register(createPoll)

void app.listen({ port: 3333 }).then(() => {
  console.log('Server Run')
})
