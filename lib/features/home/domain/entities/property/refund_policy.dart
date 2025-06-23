class RefundPolicy {
  final bool isRefundable;
  final String policyDetails;
  final int refundDaysBefore;

  RefundPolicy({
    required this.isRefundable,
    required this.policyDetails,
    required this.refundDaysBefore,
  });
}