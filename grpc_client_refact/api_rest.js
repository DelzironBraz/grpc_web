const express = require('express');
const cors = require('cors');

const app = express();
const { imprimir, adicionarPalavra } = require('./greeter_client') 
const port = 3000;

app.use(cors({
    origin: '*', 
    methods: ['GET', 'POST'], 
    allowedHeaders: ['Content-Type', 'Authorization'], 
}));
app.use(express.json());

app.get('/imprimir', async (req, res) => {
    const respostaGrpc = await imprimir();
    res.send({ message: respostaGrpc });
});

app.post('/adicionar-palavra', (req, res) => {
    const { palavra } = req.body;
    if (palavra) {
        adicionarPalavra(palavra);
        res.send({ message: `'${palavra}' adicionado!` });
    } else {
        res.status(400).send({ error: 'Por favor, informa a palavra que deseja adicionar' });
    }
});

app.listen(port, () => {
    console.log(`Servidor rodando em http://localhost:${port}`);
});
