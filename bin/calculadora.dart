import 'dart:io';

void main(){
  
    double firstNumber = 0;
    double secondNumber = 0;
    String operation = "";
    String? entrance = "";
    List<String> avaiableOperations = <String>["+", "-", "*", "/"];

    void sum(){
    print(firstNumber + secondNumber);
    }

    void subtraction(){
    print(firstNumber - secondNumber);
    }

    void divide(){
    print(firstNumber / secondNumber);
    }

    void multiply(){
    print(firstNumber * secondNumber);
    }

    void calculate(){
        switch (operation){
            case "+": 
            sum();
            break;

            case "-":
            subtraction();
            break;

            case "*":
            multiply();
            break;

            case "/":
            divide();
            break;
        }
    }

    void getOperation(){
        print("Agora, digite a operação que deseja realizar ${avaiableOperations.toString()}");
        entrance = stdin.readLineSync();
        if (entrance != null){
            if(avaiableOperations.contains(entrance)) {
                operation = entrance!;
            } else {
                print("Operação inválida!");
                getOperation();
            }
        }
    }

    print("Bem-vindo a Calculadora! Digite o primeiro valor");

    entrance = stdin.readLineSync();

    if(entrance != null){
        if(entrance != ""){
            firstNumber = double.parse(entrance!);
        }
    }

    getOperation();

    print("Por último, digite o segundo valor");

    entrance = stdin.readLineSync();
    if(entrance != null){
        if(entrance != ""){
            secondNumber = double.parse(entrance!);
        }
    }

    print("O resultado da operação é de: ");
    calculate();

}


