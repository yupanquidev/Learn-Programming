import { useMemo, useState } from 'react'
import './App.css'
import { Results } from './components/Results'
import { UsersList } from './components/UsersList'
import { useUsers } from './hooks/useUsers'
import { SortBy, type User } from './types.d'

function App () {
  const { users, fetchNextPage, hasNextPage, isLoading, isError, refetch } = useUsers()

  const [showColors, setShowColors] = useState(false)
  const [sorting, setSorting] = useState<SortBy>(SortBy.NONE)
  const [filterCountry, setFilterCountry] = useState<string | null>(null)

  // const originalUsers = useRef<User[]>([])
  /*
    - useRef -> es para guardar un valor que
      queremos que se comparta entre renderizados
      pero que al cambiar, no vuelva a renderizar el componente.
  */

  const toggleColors = () => {
    setShowColors(!showColors)
  }

  const toggleSortByCountry = () => {
    const newSortingValue = sorting === SortBy.NONE ? SortBy.COUNTRY : SortBy.NONE
    setSorting(newSortingValue)
  }

  const handleReset = () => {
    // setUsers(originalUsers.current)
    void refetch()
  }

  const handleDelete = (email: string) => {
    // const filteredUsers = users.filter((user) => user.email !== email)
    // setUsers(filteredUsers)
  }

  const handleChangeSort = (sort: SortBy) => {
    setSorting(sort)
  }

  const filteredUsers = useMemo(() => {
    return filterCountry != null && filterCountry.length > 0
      ? users.filter((user) => {
        return user.location.country.toLowerCase().includes(filterCountry.toLowerCase())
      })
      : users
  }, [users, filterCountry])

  const sortedUsers = useMemo(() => {
    if (sorting === SortBy.NONE) return filteredUsers

    const compareProperties: Record<string, (user: User) => any> = {
      [SortBy.COUNTRY]: user => user.location.country,
      [SortBy.NAME]: user => user.name.first,
      [SortBy.LAST]: user => user.name.last
    }
    return filteredUsers.toSorted((a, b) => {
      const extractProperty = compareProperties[sorting]
      return extractProperty(a).localeCompare(extractProperty(b))
    })
  }, [filteredUsers, sorting])

  return (
    <div className='App'>
      <h1>Prueba técnica</h1>
      <Results />
      <header>
        <button onClick={toggleColors}>
          Colorear filas
        </button>
        <button onClick={toggleSortByCountry}>
          { sorting === SortBy.COUNTRY ? 'No ordenar por país' : 'Ordenar por país' }
        </button>
        <button onClick={handleReset}>
          Resetear estado
        </button>
        <input
          placeholder='Filtrar por país'
          onChange={(e) => {
            setFilterCountry(e.target.value)
          }}
        />
      </header>
      <main>
        {users.length > 0 && <UsersList changeSorting={handleChangeSort} deleteUser={handleDelete} showColors={showColors} users={sortedUsers} />}
        {isLoading && <strong>Cargando...</strong>}
        {isError && <p>Ha ocurrido un Error</p>}
        {!isError && users.length === 0 && <p>No hay usuarios</p>}
        {!isLoading && !isError && hasNextPage === true && <button onClick={() => { void fetchNextPage() }}>Cargar más resultados</button>}
      </main>
    </div>
  )
}

export default App
