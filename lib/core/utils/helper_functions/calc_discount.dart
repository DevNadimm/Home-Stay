double calculateFinalPrice(double price, {double? discount}) {
  if (discount != null && discount > 0) {
    return price * (1 - discount / 100);
  }
  return price;
}
