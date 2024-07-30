import 'package:provider/provider.dart';
import 'package:ticket_app/provider/counter_provider.dart';

List<Provider> providers = [
  Provider(create: (context) => CounterModel())
];