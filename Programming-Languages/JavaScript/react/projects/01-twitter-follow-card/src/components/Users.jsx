import { TwitterFollowCard } from '../TwitterFollowCard'

export function Users () {
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

  return (
    <>
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
    </>
  )
}
