export interface Comment {
  title: string
  message: string
}

export interface CommentWithId extends Comment {
  preview: boolean
  id: string
}

export const getComments = async () => {
  const response = await fetch('https://api.jsonbin.io/v3/b/6440bd18c0e7653a05a81081', {
    method: 'GET',
    headers: {
      'Content-Type': 'application/json',
      'X-Access-Key': import.meta.env.VITE_PUBLIC_API_KEY
    }
  })

  if (!response.ok) {
    throw new Error('Failed to fetch comments.')
  }

  const json = await response.json()

  return json?.record
}

const delay = async (ms: number) => await new Promise(resolve => setTimeout(resolve, ms))

export const postComment = async (comment: Comment) => {
  const comments = await getComments()

  const id = crypto.randomUUID()
  const newComment = { ...comment, id }
  const commentsToSave = [...comments, newComment]

  const response = await fetch('https://api.jsonbin.io/v3/b/643fbe2bc0e7653a05a77535', {
    method: 'PUT',
    headers: {
      'Content-Type': 'application/json',
      'X-Access-Key': import.meta.env.VITE_PUBLIC_API_KEY
    },
    body: JSON.stringify(commentsToSave)
  })

  if (!response.ok) {
    throw new Error('Failed to post comment.')
  }

  return newComment
}
