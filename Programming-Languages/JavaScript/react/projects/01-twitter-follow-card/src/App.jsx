import './App.css'
import { TwitterFollowCard } from './TwitterFollowCard.jsx'

const users = [
  {
    userName: 'ypnqh',
    name: 'Humberto Yupanqui',
    isFollowing: true
  },
  {
    userName: 'satyanadella',
    name: 'Satya Nadella',
    isFollowing: true
  },
  {
    userName: 'HustavoJhon',
    name: 'Hustavo Jhon',
    isFollowing: false
  }
]

export function App () {
  return (
    <section className='App'>
      <h2>A quién seguir</h2>
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
      <span className='show-more'>Mostrar más</span>
    </section>
  )
}
