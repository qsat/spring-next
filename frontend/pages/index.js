import { useEffect, useState } from 'react'

function HomePage(props) {
  const [state, setState] = useState({})
  console.log(props)
  useEffect(() => { window.data && setState(window.data) }, [])
  const users = state.users
  if (!users) return <div />

  return <div>
    Welcome to Next.js! {users.length}
    {users.map(({name}) => <p>{name}</p>)}
  </div>
}

export default HomePage
