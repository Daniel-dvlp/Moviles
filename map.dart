void main (){
  MapNumbers();
}

void MapNumbers(){
  Map<String, String> numbers = {'uno':'1','dos':'2','tres':'3'};
  var numbers2 = {'cuatro':'4','cinco':'5','seis':'6'};
  numbers.addAll(numbers2);
  numbers.remove('uno');
  numbers.removeWhere((key, value) => key == 'dos');
  print(numbers);
}