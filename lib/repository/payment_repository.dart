abstract interface class PaymentRepository {
  Future<void> getPaymentMethod(String name, String cardNumber, String expiry, String cvv);
}