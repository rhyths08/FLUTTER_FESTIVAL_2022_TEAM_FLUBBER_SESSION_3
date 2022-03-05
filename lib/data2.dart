import 'dart:math';


int cal(int c)
{
  var random = Random();
  int a = (random.nextInt(9));
  int percentage= a*c;
  return percentage;
}