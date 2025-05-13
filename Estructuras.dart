void main(){
  ListExample();

  
}

void ListExample(){
    List<String> numbers = ['uno','dos','tres'];
    var numbers2 = ['cuatro','cinco','seis'];

    numbers[0] = 'uno modificado';
    numbers.addAll(numbers2);
    numbers.removeAt(0);
    numbers.remove('siete');
    numbers.insert(0, 'cero');
    numbers.clear();
    print(numbers);
  }