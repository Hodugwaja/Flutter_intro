class Rabit{
  String _name;
  RabbitState _state;
  Rabbit({String name, RabbitState state}){
    this._name = name;
    this._state = state;
  }

  get name => _name;
  get state => _state;

  updateState(RabbitState state){
    this._state = state;
  }
}

enum RabbitState{SLEEP, RUN, WALK, EAT}