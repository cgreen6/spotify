import { Routes, Route } from 'react-router-dom';
import Navbar from './components/shared/Navbar';
import Billboards from './components/billboards/Billboards/';
import Artists from './components/artists/Artists';
import Songs from './components/songs/Songs';
import Home from './components/shared/Home';
import About from './components/shared/About';
import Nomatch from './components/shared/Nomatch';



const App = () => (
  <>  
    <Navbar />
    <Routes>
      <Route path='/' element={<Home />} />
      <Route path='/about' element={<About />} />
      <Route path='/billboards' element={<Billboards />} />
      {/* :subId is a placeholde for the parent id */}
      <Route path='/:subId/artists' element={<Artists />} />
      <Route path='/:subId/songs' element={<Songs />} />
      {/* mainly for all other routes go here */}
      <Route path='/*' element={<Nomatch />} />
    </Routes>
    {/* <Footer /> */}
  </>
)

export default App;
