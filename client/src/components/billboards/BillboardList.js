import BillboardShow from './BillboardShow';

const BillboardList = ({ billboards, updateBillboard, deleteBillboard }) => (
  <>
    { billboards.map( s =>
      <BillboardShow
        key={s.id}
        {...s}
        deleteBillboard={deleteBillboard}
        updateBillboard={updateBillboard}
      />
    )}
  </>
)
      
export default BillboardList;