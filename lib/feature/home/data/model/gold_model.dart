import 'package:equatable/equatable.dart';

class GoldModel extends Equatable {
	final String? name;
	final double? price;
	final String? symbol;
	final String? updatedAt;
	final String? updatedAtReadable;

	const GoldModel({
		this.name, 
		this.price, 
		this.symbol, 
		this.updatedAt, 
		this.updatedAtReadable, 
	});

	factory GoldModel.fromJson(Map<String, dynamic> json) => GoldModel(
				name: json['name'] as String?,
				price: (json['price'] as num?)?.toDouble(),
				symbol: json['symbol'] as String?,
				updatedAt: json['updatedAt'] as String?,
				updatedAtReadable: json['updatedAtReadable'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'name': name,
				'price': price,
				'symbol': symbol,
				'updatedAt': updatedAt,
				'updatedAtReadable': updatedAtReadable,
			};

	@override
	List<Object?> get props {
		return [
				name,
				price,
				symbol,
				updatedAt,
				updatedAtReadable,
		];
	}
}
