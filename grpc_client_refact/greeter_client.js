var PROTO_PATH = __dirname + "/trabgrpc.proto";

var parseArgs = require("minimist");
var grpc = require("@grpc/grpc-js");
var protoLoader = require("@grpc/proto-loader");

var packageDefinition = protoLoader.loadSync(PROTO_PATH, {
  keepCase: true,
  longs: String,
  enums: String,
  defaults: true,
  oneofs: true,
});
var trabgrpc_proto = grpc.loadPackageDefinition(packageDefinition).helloworld;

var client = new trabgrpc_proto.Greeter(
  "localhost:50051",
  grpc.credentials.createInsecure()
);

function imprimir() {
  return new Promise((resolve, reject) => {
    client.sayHello({ name: "IMPRIMIR" }, function (err, response) {
      if (err) {
        console.error("Erro ao consultar dicionário:", err.message);
        reject(`Erro ao consultar dicionário: ${err.message}`);
      } else {
        // console.log("Dicionário do servidor:\n", response.message);
        resolve(response.message);
      }
    });
  });
}

function adicionarPalavra(palavra) {
  if (!palavra) {
    return 'Por favor, informe a palavra que deseja adicionar';
  }

  return new Promise((resolve, reject) => {
    client.sayHello({ name: palavra }, function (err, response) {
      if (err) {
        console.error("Erro ao adicionar palavra:", err.message);
        reject(`Erro ao adicionar palavra: ${err.message}`);
      } else {
        console.log("Palavra adicionada:", palavra);
        resolve(response.message);
      }
    });
  });
}

async function main() {
  var argv = parseArgs(process.argv.slice(2), {
    string: ["target", "mode"],
    alias: { t: "target", m: "mode" },
  });

  var mode = argv.mode || "inclusao";

  if (mode === "inclusao") {
    if (argv._.length === 0) {
      console.error("Erro: Nenhuma palavra fornecida para inclusão.");
      return 'Nenhuma palavra fornecida para inclusão';
    }
    argv._.forEach((word) => {
      adicionarPalavra(word);
    });
  } else if (mode === "consulta") {
    const msg = await imprimir()
    console.log(msg);
  } else {
    console.error("Erro: Modo inválido. Use 'inclusao' ou 'consulta'.");
    return 'Modo inválido. Use "inclusao" ou "consulta".';
  }
}

main();

module.exports = {
  imprimir, adicionarPalavra
};