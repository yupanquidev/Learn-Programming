import { useCatImg } from "../hooks/useCatImg.js";

export function Otro () {
  const { imgUrl } = useCatImg({ fact: 'Cat' });

  return (
    <>
      {imgUrl && <img src={imgUrl} alt="Other components"/>}
    </>
  )
}