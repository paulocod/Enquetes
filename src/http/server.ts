import fastify from 'fastify'
import { createPoll } from './routes/createPoll'
import { getPoll } from './routes/getPoll'

const app = fastify()

void app.register(createPoll)
void app.register(getPoll)

void app.listen({ port: 3333 }).then(() => {
  console.log('Server Run')
})
