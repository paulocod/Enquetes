import fastify from 'fastify'
import { createPoll } from './routes/createPoll'
import { getPoll } from './routes/getPoll'
import { voteOnPoll } from './routes/voteOnPolls'
import cookie from '@fastify/cookie'

const app = fastify()

app.register(cookie, {
  secret: 'e81745c7-9f92-4c77-990f-592831ae4f2e',
  hook: 'onRequest'
})
app.register(createPoll)
app.register(getPoll)
app.register(voteOnPoll)

app.listen({ port: 3333 }).then(() => {
  console.log('Server Run')
})
