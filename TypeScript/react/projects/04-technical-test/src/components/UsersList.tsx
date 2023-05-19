import { SortBy, type User } from '../types.d'

interface Props {
  changeSorting: (sort: SortBy) => void
  deleteUser: (email: string) => void
  showColors: boolean
  users: User[]
}

export function UsersList ({ changeSorting, deleteUser, showColors, users }: Props) {
  return (
    <table>
      <thead>
        <tr>
          <th>Foto</th>
          <th className='pointer' onClick={() => { changeSorting(SortBy.NAME) }}>Nombre</th>
          <th className='pointer' onClick={() => { changeSorting(SortBy.LAST) }}>Apellido</th>
          <th className='pointer' onClick={() => { changeSorting(SortBy.COUNTRY) }}>País</th>
          <th>Acciones</th>
        </tr>
      </thead>
      <tbody>
        {
          users.map((user, index) => {
            const backgroundColor = index % 2 === 0 ? '#333' : '#555'
            const color = showColors ? backgroundColor : 'transparent'

            return (
              <tr key={user.email} style={{ backgroundColor: color }}>
                <td><img src={user.picture.thumbnail} /></td>
                <td>{user.name.first}</td>
                <td >{user.name.last}</td>
                <td >{user.location.country}</td>
                <td>
                  <button
                    onClick={() => { deleteUser(user.email) }}
                  >Borrar</button>
                </td>
              </tr>
            )
          })
        }
      </tbody>
    </table>
  )
}

// table -> crea una tabla
// thead -> crea una fila de encabezado
// tbody -> crea una fila de cuerpo
// tr -> crea una fila
// td -> crea una celda
// th -> crea una celda de encabezado
