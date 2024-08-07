#!/bin/bash
sum() {
 echo "Sum result: "
 echo "$num1 + $num2 = $((num1 + num2))"
}
subtract() {
 echo "Subtraction result: "
 echo "$num1 - $num2 = $((num1 - num2))"
}
multiply() {
 echo "Multiplication result: "
 echo "$num1 * $num2 = $((num1 * num2))"
}
divide() {
 echo "Division result: "
 echo "$num1 / $num2 = $((num1 / num2))"
}

echo "Give two values: "
read -r num1 num2
echo "Choose operation: [+], [-], [*], [/] or quit calculator: [x]"
read -r Operation
case $Operation in
 '+')
   sum $num1 $num2
   ;;
 '-')
   subtract $num1 $num2
  ;;
 '*')
   multiply $num1 $num2
  ;;
 '/')
   divide $num1 $num2
  ;;
esac
