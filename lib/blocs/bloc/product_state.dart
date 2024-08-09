
part of 'product_bloc.dart';

abstract class ProductState {}

enum Status { pure, loading, success, fail }

class ProductSucces extends ProductState {
  List<Product> products;
  Status status;
  ProductSucces({
    required this.status,
    required this.products,
  });

  ProductSucces copyWith({
    List<Product>? products,
    Status? status,
  }) {
    return ProductSucces(
      products: products ?? this.products,
      status: status ?? this.status,
    );
  }

  @override
  bool operator ==(covariant ProductSucces other) {
    if (identical(this, other)) return true;

    return listEquals(other.products, products) && other.status == status;
  }

  @override
  int get hashCode => products.hashCode ^ status.hashCode;

  @override
  String toString() => 'ProductSucces(products: $products, status: $status)';
}

final class ProductError extends ProductState {}
