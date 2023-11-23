import './App.css'
import { TwitterFollowCard } from './TwitterFollowCard'

const users = [
  {
    userName: 'ypnqh',
    name: 'Humberto Yupanqui Apaza',
    isFollowing: false
  },
  {
    userName: 'HustavoJhon',
    name: 'Gustavo Jhon',
    isFollowing: true
  },
  {
    userName: 'Hokage-16',
    name: 'Hokage-16',
    isFollowing: false
  }
]

export function App () {
  return (
    <>
      <h2>A quién seguir</h2>
      <section className='App'>
        {
        users.map(({ userName, name, isFollowing }) => (
          <TwitterFollowCard
            key={userName}
            userName={userName}
            initialIsFollowing={isFollowing}
          >
            {name}
          </TwitterFollowCard>
        ))
      }
      </section>
      <section>
        <p>Mostrar más</p>
      </section>
    </>
  )
}
