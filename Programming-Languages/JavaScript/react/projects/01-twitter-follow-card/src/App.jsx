import './App.css'
import { TwitterFollowCard } from './TwitterFollowCard.jsx'

const users = [
  {
    userName: 'hyupanqui',
    name: 'Humberto Yupanqui',
    isFollowing: true
  },
  {
    userName: 'renemeloquispe',
    name: 'Pedro Zuares',
    isFollowing: true
  },
  {
    userName: 'Rene',
    name: 'Rene Hernadez',
    isFollowing: false
  }
]

export function App () {
  return (
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
  )
}
