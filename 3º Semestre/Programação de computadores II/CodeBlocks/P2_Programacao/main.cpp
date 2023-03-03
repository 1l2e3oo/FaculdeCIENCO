num1 = float(input("Digite o primeiro numero: "));
num2 = float(input("Digite o segundo numero: "));

oper = input("Escolha a operação: ");
if oper == "+":
    res = num1 + num2
elif oper =="-":
    res = num1 - num2
elif oper =="*":
    res = num1 * num2
elif oper =="/":
    res = num1 / num2
else:
    print("Operação inválida!")
    res=0
print(res)
