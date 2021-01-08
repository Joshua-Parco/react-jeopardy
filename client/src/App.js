import { useState, useEffect, } from 'react';
import { Container, Table, } from 'semantic-ui-react';
import axios from 'axios';

function App() {
  const [ board, setBoard ] = useState([]);

  useEffect(() => {
    axios.get('/api/board')
      .then( response => {
        setBoard(response.data.data);
      })
      .catch( error => {
        console.log(error);
      });
  }, []);
//  
// {board.map( c => {
//               return (
//                 <Table.Row key={c.category_id}>
//                   {c.cards.map( ca => { return <Table.Cell key={ca.id}>{ca.question}</Table.Cell> })}
//                 </Table.Row>
//               )
//             })}
// 
//             <Table.Row>
//               <Table.Cell></Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//             </Table.Row>
//             <Table.Row>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//             </Table.Row>
//             <Table.Row>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//               <Table.Cell>Cell</Table.Cell>
//             </Table.Row>
// 
  return (
    <>
      <Container>
        <Table celled>
          <Table.Header>
            <Table.Row>
              {board.map( c => {
                return <Table.HeaderCell>{c.category}</Table.HeaderCell>
              })}
            </Table.Row>
          </Table.Header>
          <Table.Body>
            {board.map( c => {
              return (
                <Table.Row key={c.category_id}>
                  {c.cards.map( ca => { return <Table.Cell key={ca.id}>{ca.question}</Table.Cell> })}
                </Table.Row>
              )
            })}
          </Table.Body>
        </Table>
      </Container>
    </>
  );
}

export default App;
