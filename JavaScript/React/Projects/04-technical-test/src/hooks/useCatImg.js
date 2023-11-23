import { useEffect, useState } from 'react'

const CAT_PREFIX_IMG_URL = 'https://cataas.com'

export function useCatImg ({ fact }) {
  const [imgUrl, setImgUrl] = useState()
  // Efecto para recuperar la imagen cada vez que tenemos una cita nueva
  useEffect(() => {
    if (!fact) return

    const threeFirstWord = fact.split(' ', 3).join('')

    fetch(`https://cataas.com/cat/says/${threeFirstWord}?size=50&color=red&json=true`)
      .then(res => res.json())
      .then(response => {
        const { url } = response
        setImgUrl(url)
      })
  }, [fact])

  return { imgUrl: `${CAT_PREFIX_IMG_URL}${imgUrl}` }
}
