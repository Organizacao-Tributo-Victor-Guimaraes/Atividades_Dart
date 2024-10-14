import 'dart:io';


double celsiusParaFahrenheit(double celsius) {
  return (celsius * 9/5) + 32;
}

double celsiusParaKelvin(double celsius) {
  return celsius + 273.15;
}

double fahrenheitParaCelsius(double fahrenheit) {
  return (fahrenheit - 32) * 5/9;
}

double fahrenheitParaKelvin(double fahrenheit) {
  return (fahrenheit - 32) * 5/9 + 273.15;
}

double kelvinParaCelsius(double kelvin) {
  return kelvin - 273.15;
}

double kelvinParaFahrenheit(double kelvin) {
  return (kelvin - 273.15) * 9/5 + 32;
}

void main() {
  print("Digite o valor da temperatura:");
  double valor = double.parse(stdin.readLineSync()!);

  print("Digite a unidade da temperatura (C para Celsius, F para Fahrenheit, K para Kelvin):");
  String unidade = stdin.readLineSync()!.toUpperCase();

  if (unidade == "C") {
    print("${valor}°C equivale a ${celsiusParaFahrenheit(valor)}°F e ${celsiusParaKelvin(valor)}K");
  } else if (unidade == "F") {
    print("${valor}°F equivale a ${fahrenheitParaCelsius(valor)}°C e ${fahrenheitParaKelvin(valor)}K");
  } else if (unidade == "K") {
    print("${valor}K equivale a ${kelvinParaCelsius(valor)}°C e ${kelvinParaFahrenheit(valor)}°F");
  } else {
    print("Unidade inválida.");
  }
}

