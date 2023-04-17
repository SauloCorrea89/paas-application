import React from 'react';
import ReactDOM from 'react';

function HelloWorld() {
    const shoot = () => {
      alert("Projeto Final - Saulo Silveira Correa");
    }
  
    return (
      <button onClick={shoot}>Execute</button>
    );
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<HelloWorld />);