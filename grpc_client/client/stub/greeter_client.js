var PROTO_PATH = __dirname + "/../../protos/helloworld.proto";

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
var hello_proto = grpc.loadPackageDefinition(packageDefinition).helloworld;

function main(args = null) {
  var argv = parseArgs(args ? args[0] : process.argv.slice(2), {
    string: ["target", "mode"],
    alias: { t: "target", m: "mode" },
  });

  var target = argv.target || "localhost:50051";
  var mode = argv.mode || "inclusao";

  var client = new hello_proto.Greeter(
    target,
    grpc.credentials.createInsecure()
  );

  if (mode === "inclusao") {
    if (argv._.length === 0) {
      console.error("Erro: Nenhuma palavra fornecida para inclusão.");
      return 'Nenhuma palavra fornecida para inclusão';
    }

    argv._.forEach((word) => {
      client.sayHello({ name: word }, function (err, response) {
        if (err) {
          console.error("Erro ao enviar palavra:", err.message);
          return `Erro ao enviar palavra: ${err.message}`;
        } else {
          console.log("Resposta do servidor:", response.message);
          return response.message;
        }
      });
    });
  } else if (mode === "consulta") {
    return new Promise((resolve, reject) => {
      client.sayHello({ name: "IMPRIMIR" }, function (err, response) {
        if (err) {
          console.error("Erro ao consultar dicionário:", err.message);
          reject(`Erro ao consultar dicionário: ${err.message}`);
        } else {
          console.log("Dicionário do servidor:\n", response.message);
          resolve(response.message);
        }
      });
    });
  } else {
    console.error("Erro: Modo inválido. Use 'inclusao' ou 'consulta'.");
    return 'Modo inválido. Use "inclusao" ou "consulta".';
  }
}

main();

module.exports = {
  main
};