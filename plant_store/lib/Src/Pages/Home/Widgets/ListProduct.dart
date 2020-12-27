import 'package:plant_store/Src/Pages/Detail/DetailProduct.dart';
import 'package:plant_store/Src/Utils/Export_Widgets.dart';

class ProductList extends StatelessWidget {
  final Function press;
  final TopProduct product;
  const ProductList({
    Key key, this.press, this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: SizedBox(
        height: 250,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) => buildListProduct(index, press, context),
           
            ),
      ),
    );
  }
  Widget buildListProduct(
    int index,
    Function press, BuildContext context
  ) {
    return GestureDetector(
      onTap: press = ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduct(
        product: products[index],
      ))),
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kdefaulpadding / 2),
        child: Container(
          decoration: BoxDecoration(
              color: kColorGray, borderRadius: BorderRadius.circular(20)),
          width: 300,
          child: Row(children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(
              products[index].image,
              width: 125,
              height: 200,
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: kdefaulpadding * 0.2, top: kdefaulpadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( '\$${products[index].price}0',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: kColorGree)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Name',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kColorGrayText)),
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    '${products[index].name}',
                    style: TextStyle(
                        color: kColorBlack, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Type',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: kColorGrayText)),
                  Text('${products[index].type}',
                      style: TextStyle(
                          color: kColorBlack, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(

                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: Image.asset(
                            'assets/image/plat-2.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: kColorGree)
                          ),
                          child: Image.asset(
                            'assets/image/plat-3.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              ),
                          child: Image.asset(
                            'assets/image/plat-1.png',
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
