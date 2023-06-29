import 'dart:io';

void main() {
  List<String> Username = [];
  String opcoes = "x";
  while (opcoes != "SAIR") {
    print(
        "Qual opção voce escolhe: Gravar novo nome(a), Ler nomes existente(b), Editar nome existente(c), Deletar algum username(d), Sair(SAIR)");
    String escolha = stdin.readLineSync() ?? "";
    if (escolha == "a") {
      print("Adicione um Username:");

      String? adicionar = stdin.readLineSync();
      Username.add(adicionar ?? "");
      print("ADICIONADO");
    } else if (escolha == "b") {
      print(Username);
    } else if (escolha == "c") {
      print("Qual nome quer editar:");
      print(Username);

      String? name = stdin.readLineSync();
      int index = Username.indexOf(name ?? '');
      if (index == -1) {
        print("Nome não esta na lista");
      } else {
        print("Digitenovo Username");
        String? adicionarEdit = stdin.readLineSync();
        Username[index] = adicionarEdit ?? '';
        print("Alterado");
      }
    } else if (escolha == "d") {
      print("Qual nome quer excluir:");
      print(Username);
      String? name = stdin.readLineSync();
      int index = Username.indexOf(name ?? '');
      if (index == -1) {
        print("Nome não esta na lista");
      } else {
        Username.removeAt(index);
      }
    } else if (escolha == "SAIR") {
      
      print("Obrigado por usar meu programa");
      break;
    }
  }
}
