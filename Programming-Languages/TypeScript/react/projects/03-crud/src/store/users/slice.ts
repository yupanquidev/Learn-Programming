import { PayloadAction, createSlice } from '@reduxjs/toolkit'

const DEFAULT_STATE = [
	{
		id: '1',
		name: 'Peter Doe',
		email: 'perterdoe@gmail.com',
		github: 'peterdoe'
	},
	{
		id: '2',
		name: 'John Doe',
		email: 'johndoe@gmail.com',
		github: 'johndoe'
	},
	{
		id: '3',
		name: 'Jane Doe',
		email: 'janedoe@gmail.com',
		github: 'midudev'
	}
]

export type UserId = string

export interface User {
	name: string
	email: string
	github: string
}

export interface UserWithId extends User {
	id: UserId
}

// Función autoejecutable para obtener el estado inicial
const initialState: UserWithId[] = (() => {
	const persistedState = localStorage.getItem('redux__State')
	return persistedState ? JSON.parse(persistedState).users : DEFAULT_STATE
	/* if (persistedState) {
		return JSON.parse(persistedState).users
	}
	return DEFAULT_STATE */
})()

export const usersSlice = createSlice({
	name: 'users',
	initialState,
	reducers: {
		addNewUser: (state, action: PayloadAction<User>) => {
			const id = crypto.randomUUID()
			state.push({ id, ...action.payload })
		},
		deleteUserById: (state, action: PayloadAction<UserId>) => {
			const id = action.payload
			return state.filter((user) => user.id !== id)
		},
		rollbackUser: (state, action: PayloadAction<UserWithId>) => {
			const isUserAlreadyDefined = state.some(
				(user) => user.id === action.payload.id
			)
			if (!isUserAlreadyDefined) {
				state.push(action.payload)
			}
		}
	}
})

export default usersSlice.reducer
export const { addNewUser, deleteUserById, rollbackUser } = usersSlice.actions
