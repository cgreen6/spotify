import { link } from 'react-router-dom';

const Navbar = () => (
  <nav>
    <ul>
      <Link to='/'>
        <li>Home</li>
      </Link>
      <Link to='/about'>
        <li>About</li>
      </Link>
      <Link to='/artists'>
        <li>Artists</li>
      </Link>
      <Link to ='/billboards'>
        <li>billboards</li>
        </Link>
    </ul>
  </nav>
)

export default Navbar;