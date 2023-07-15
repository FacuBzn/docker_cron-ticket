const cron = require('node-cron');
const { syncDB } = require('./tasks/sync-db');

console.log('Inicio de nuestra aplicacion');

cron.schedule('1-59/5 * * * * *', () => syncDB  );

