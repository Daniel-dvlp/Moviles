void main(){
  SetNumbers();


}

// sets 
void SetNumbers(){
  Set<String> numbers = {'uno','dos','tres'};
  var numbers2 = {'cuatro','cinco','seis'};
  numbers.addAll(numbers2);
  numbers.remove('uno');
  numbers.removeWhere((element) => element == 'dos');
  print(numbers);
}
