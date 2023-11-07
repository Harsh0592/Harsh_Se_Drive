void main() {
  Map<String, String> capitals = {
    'USA': 'Washington, D.C.',
    'Canada': 'Ottawa',
    'France': 'Paris',
    'Germany': 'Berlin',
  };
  print("Capital of USA: ${capitals['USA']}");
  print("Capital of France: ${capitals['France']}");
  capitals['Canada'] = 'Ottawa-Gatineau';
  print("Modified capital of Canada: ${capitals['Canada']}");
  capitals['Italy'] = 'Rome';
  print("Added capital of Italy: ${capitals['Italy']}");
  capitals.remove('Germany');
  print("Removed capital of Germany: ${capitals['Germany']}");
  bool hasFrance = capitals.containsKey('France');
  print("Does the map contain 'France'? $hasFrance");
  print("Iterating through the map:");
  capitals.forEach((country, capital) {
    print("Capital of $country: $capital");
  });
}
