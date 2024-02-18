import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_styles.dart';
import '../consts.dart';
import '../providers/cart_provider.dart';
import '../size_config.dart';
import '../push_animation.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: tPoppinsRegular.copyWith(
              fontSize: SizeConfig.blockSizeHorizontal! * 6, color: tBlack4),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              cartProvider.items.isEmpty ? 'Your Cart is Empty' : 'Pets Added:',
              style: tPoppinsSemiBold.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            if (cartProvider.items.isNotEmpty)
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: cartProvider.items.length,
                  itemBuilder: (context, index) {
                    Pet pet = cartProvider.items[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: tWhite,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x0A171439),
                              blurRadius: 35,
                              spreadRadius: 0,
                              offset: Offset(0, 20),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                            12,
                            12,
                            12,
                            12,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: SizeConfig.blockSizeVertical! * 12,
                                width: SizeConfig.blockSizeHorizontal! * 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(pet.image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 43,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: SizeConfig
                                                    .blockSizeHorizontal! *
                                                20,
                                            child: Text(
                                              pet.breed,
                                              style: tPoppinsBold.copyWith(
                                                color: tBlack,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    4,
                                              ),
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '\$${pet.price}',
                                            style: tPoppinsBold.copyWith(
                                              color: tOrange,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  4,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 43,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Type:",
                                            style: tPoppinsRegular.copyWith(
                                              color: tBlack,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            pet.type,
                                            style: tPoppinsRegular.copyWith(
                                              color: tOrange,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 43,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Weight:",
                                            style: tPoppinsRegular.copyWith(
                                              color: tBlack,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            pet.weight.toString(),
                                            style: tPoppinsRegular.copyWith(
                                              color: tOrange,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 43,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Height:",
                                            style: tPoppinsRegular.copyWith(
                                              color: tBlack,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '${pet.height}',
                                            style: tPoppinsRegular.copyWith(
                                              color: tOrange,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 43,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Color:",
                                            style: tPoppinsRegular.copyWith(
                                              color: tBlack,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                          Spacer(),
                                          Text(
                                            '${pet.color}',
                                            style: tPoppinsRegular.copyWith(
                                              color: tOrange,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Spacer(),
                  Text(
                    "Total: \$${cartProvider.getCartTotal()}",
                    style: tPoppinsSemiBold.copyWith(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tOrange,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.76),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Check Out",
                      style: tPoppinsSemiBold.copyWith(
                          color: tWhite,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
