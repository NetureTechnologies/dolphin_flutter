library dolphin_flutter;

class BrazilStatesUtils {
  static BrazilStatesModel getStateByCode(String code) =>
      ufList.firstWhere((element) => element.code == code);

  static String getStateNameByCode(String code) =>
      ufList.firstWhere((element) => element.code == code).name;

  static String getStateCodeByName(String name) =>
      ufList.firstWhere((element) => element.name == name).code;
}


var ufList = [
  BrazilStatesModel("Acre", "AC"),
  BrazilStatesModel("Alagoas", "AL"),
  BrazilStatesModel("Amapá", "AP"),
  BrazilStatesModel("Amazonas", "AM"),
  BrazilStatesModel("Bahia", "BA"),
  BrazilStatesModel("Ceará", "CE"),
  BrazilStatesModel("Espírito Santo", "ES"),
  BrazilStatesModel("Goiás", "GO"),
  BrazilStatesModel("Maranhão", "MA"),
  BrazilStatesModel("Mato Grosso", "MT"),
  BrazilStatesModel("Mato Grosso do Sul", "MS"),
  BrazilStatesModel("Minas Gerais", "MG"),
  BrazilStatesModel("Pará", "PA"),
  BrazilStatesModel("Paraíba", "PB"),
  BrazilStatesModel("Paraná", "PR"),
  BrazilStatesModel("Pernambuco", "PE"),
  BrazilStatesModel("Piauí", "PI"),
  BrazilStatesModel("Rio de Janeiro", "RJ"),
  BrazilStatesModel("Rio Grande do Norte", "RN"),
  BrazilStatesModel("Rio Grande do Sul", "RS"),
  BrazilStatesModel("Rondônia", "RO"),
  BrazilStatesModel("Roraima", "RR"),
  BrazilStatesModel("Santa Catarina", "SC"),
  BrazilStatesModel("São Paulo", "SP"),
  BrazilStatesModel("Sergipe", "SE"),
  BrazilStatesModel("Tocantins", "TO"),
  BrazilStatesModel("Distrito Federal", "DF"),
];

class BrazilStatesModel {
  final String name;
  final String code;

  BrazilStatesModel(this.name, this.code);
}