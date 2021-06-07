Future<String> orderCoffee() => Future.delayed(
      Duration(seconds: 2),
      () => 'Take your coffer',
    );

Future<String> orderEspresso() => Future.value('Take your espresso');

Future<String> orderCoffeeError() => Future.error(UnimplementedError);

Future<void> main() async {
  print('welcome to cafe');
  try {
    final order = await orderCoffee();
    print(order);
    final order2 = await orderEspresso();
    print(order2);
    final order3 = await orderCoffeeError();
    print(order3);
  } catch (e) {
    print(e);
  } finally {
    print('tnx for comming');
  }
}
