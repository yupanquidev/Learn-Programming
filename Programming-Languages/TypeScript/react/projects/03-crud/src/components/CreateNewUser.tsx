import { Badge, Button, Card, TextInput, Title } from '@tremor/react'
import { useState } from 'react'
import { useUsersActions } from '../hooks/useUsersActions'

export function CreateNewUser() {
	const { addUser } = useUsersActions()
	const [result, setResult] = useState<'ok' | 'ko' | null>(null)

	const handleSubmit = (event: React.FormEvent<HTMLFormEvent>) => {
		event.preventDefault()

		setResult(null)

		const form = event.target
		const formData = new FormData(form)

		const name = formData.get('name') as string
		const email = formData.get('email') as string
		const github = formData.get('github') as string

		if (!name || !email || !github) {
			return setResult('ko')
		}

		addUser({ name, email, github })
		setResult('ok')
		form.reset()
	}
	return (
		<Card className='mt-4'>
			<Title>Create New User</Title>
			<form onSubmit={handleSubmit} className=''>
				<TextInput placeholder='Aquí el nombre' name='name' />
				<TextInput placeholder='Aquí el email' name='email' />
				<TextInput placeholder='Aquí el ussuario de github' name='github' />
				<div>
					<Button type='submit' className='mt-4'>
						crear usuario
					</Button>
					<span>
						{result === 'ok' && (
							<Badge className='text-green-500'>Guardado Correctamente</Badge>
						)}
						{result === 'ko' && (
							<Badge className='text-red-500'>Error con los campos</Badge>
						)}
					</span>
				</div>
			</form>
		</Card>
	)
}
