num1 = float(input("Digite o primeiro numero: "));
num2 = float(input("Digite o segundo numero: "));

oper = input("Escolha a opera��o: ");
if oper == "+":
    res = num1 + num2
elif oper =="-":
    res = num1 - num2
elif oper =="*":
    res = num1 * num2
elif oper =="/":
    res = num1 / num2
else:
    print("Opera��o inv�lida!")
    res=0
print(res)
