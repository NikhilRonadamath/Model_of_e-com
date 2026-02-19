
export class Product {
  id: string;
  name: string;
  description: string;
  price: number;
  imageUrl: string;
  rating: number;
  category: string;

  constructor(
    id: string,
    name: string,
    description: string,
    price: number,
    imageUrl: string,
    rating: number,
    category: string
  ) {
    this.id = id;
    this.name = name;
    this.description = description;
    this.price = price;
    this.imageUrl = imageUrl;
    this.rating = rating;
    this.category = category;
  }

  static fromJson(json: any): Product {
    return new Product(
      json.id,
      json.name,
      json.description,
      json.price,
      json.imageUrl,
      json.rating,
      json.category
    );
  }

  toJson(): any {
    return {
      id: this.id,
      name: this.name,
      description: this.description,
      price: this.price,
      imageUrl: this.imageUrl,
      rating: this.rating,
      category: this.category
    };
  }
}

