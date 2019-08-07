#include <iostream>
#include <string>
using namespace std;

float peso, dolar, dolarpeso;
float pulg, cm, pulgAcm;
float kil, lib, kilAlib;

int main(){
	cout << "**cuantos dolares tienes" << endl;
	cin >> dolar;
	float peso = 19.03;
	float dolarpeso = dolar*peso; 
	cout << "tienes " << dolarpeso << " pesos mexicanos" << endl;
	
	
	cout << "**cuantas pulgadas quieres convertir a centimetros " << endl;
	cin >> pulg;
	float cm = 2.54;
	float pulgAcm = pulg*cm; 
	cout << "tienes " << pulgAcm << " centimetros" << endl;
	
	
	cout << "**cuantos kilos quieres convertir a libras " << endl;
	cin >> kil;
	float lib = 2.205;
	float kilAlib = kil*lib; 
	cout << "tienes " << kilAlib << " libras " << endl;
	return 0;
}
