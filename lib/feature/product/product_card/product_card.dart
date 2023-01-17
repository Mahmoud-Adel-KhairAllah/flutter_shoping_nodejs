import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shoping_node_expres_sockit/feature/product/model/product_details_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductCard extends StatelessWidget {
   ProductCard({super.key, this.productDetailsItem});
  
    ProductDetailsItem? productDetailsItem;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width/2,
      child: Card(
        margin: EdgeInsets.all(2),
        child: Column(children: [
          SizedBox(
            height: size.height / 3,
            child: Stack(children: [
              SizedBox(
                // color: Colors.red,width: size.width,
                height: size.height,
                child:CachedNetworkImage(imageUrl:  productDetailsItem!.imageUrl,fit: BoxFit.fitHeight,width: size.width,height: size.height,)
              ),
              PositionedDirectional(
                  bottom: 20,
                  start: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(40)),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(productDetailsItem!.rating,
                              style: styleCard(
                                  size: 13, fontWeight: FontWeight.w600)),
                          const SizedBox(
                            width: 3,
                          ),
                          Icon(
                            Icons.star,
                            size: 13,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text('|'),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            '${productDetailsItem!.rating}k',
                            style:
                                styleCard(size: 13, fontWeight: FontWeight.w600),
                          )
                        ]),
                  )),
            ]),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${productDetailsItem!.name}',
                        style: styleCard(fontWeight: FontWeight.w600, size: 17),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        '${productDetailsItem!.desc}',
                          maxLines:1,
                          overflow: TextOverflow.ellipsis,
                        style: styleCard(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "\u{20B9} ""${productDetailsItem!.discountePrice}",
                            style: styleCard(
                                textDecoration: TextDecoration.lineThrough,
                                color: Colors.grey,size: 13),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                           Text(
                            "\u{20B9} ""${productDetailsItem!.actualPrice}",
                            style: styleCard(size: 13),
                                                   ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              "${productDetailsItem!.descount}% OFF",
                              style: styleCard(
                                  color: Color.fromARGB(255, 202, 9, 19), fontWeight: FontWeight.w300,size: 13),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: productDetailsItem!.wishlisted.toLowerCase()=="true"?const Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_outline,color: Colors.black,))
              ],
            ),
          )
        ]),
      ),
    );
  }

  TextStyle styleCard(
      {Color? color,
      TextDecoration? textDecoration,
      FontWeight? fontWeight,
      double? size}) {
    return TextStyle(
        color: color,
        decoration: textDecoration,
        fontWeight: fontWeight,
        fontSize: size,
        
        );
  }
}
