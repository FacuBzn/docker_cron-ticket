const { syncDB } = require("../../tasks/sync-db");

describe('pruebas en sync-db', () => {

    test('debe de ejecutar el proceso 2 veces', () => { 
        syncDB();
        const times = syncDB();
        console.log('se llamo a times:',times);
        expect( times ).toBe(2);
     }); 
    
});