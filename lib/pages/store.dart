import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../app_styles.dart';
import '../providers/cart_provider.dart';
import '../providers/search_provider.dart';
import '../size_config.dart';
import '../push_animation.dart';
import '../widgets/searchbar.dart';
import '../consts.dart';
import 'pet_details.dart';

class StoreWidget extends StatefulWidget {
  @override
  _StoreWidgetState createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  TextEditingController _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Initialize search results after the build is complete
      Provider.of<SearchProvider>(context, listen: false)
          .updateSearchResults('');
    });
  }

  void _handleClearSearch() {
    // Clear the search field and update search results
    _searchController.clear();
    Provider.of<SearchProvider>(context, listen: false).updateSearchResults('');
  }

  @override
  List<Pet> _filteredPets(String query) {
    return Provider.of<SearchProvider>(context).searchResults;
  }

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    CartProvider cartProvider = Provider.of<CartProvider>(context);

    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        title: Text(
          'Store',
          style: tPoppinsRegular.copyWith(
            fontSize: SizeConfig.blockSizeHorizontal! * 6,
            color: tBlack4,
          ),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: SearchBarWidget(
                  searchController: _searchController,
                  onClear: _handleClearSearch,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.0,
                    mainAxisSpacing: 14.0,
                  ),
                  itemCount: _filteredPets(_searchController.text).length,
                  itemBuilder: (context, index) {
                    List<Pet> filteredPets =
                        _filteredPets(_searchController.text);
                    if (index >= filteredPets.length) {
                      return SizedBox.shrink();
                    }
                    Pet pet = filteredPets[index];
                    bool isInCart = cartProvider.items.contains(pet);

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteUtils.createSlidePageRoute(
                              PetDetails(pet: pet)),
                        );
                      },
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
                            0,
                          ),
                          child: Column(
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
                              Container(
                                width: SizeConfig.blockSizeHorizontal! * 40,
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                    .5,
                                    4,
                                    .5,
                                    0,
                                  ),
                                  child: Text(
                                    pet.breed + ' ' + pet.type,
                                    style: tPoppinsRegular.copyWith(
                                      color: tBlack,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${pet.price}',
                                    style: tPoppinsRegular.copyWith(
                                      color: tOrange,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3.5,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (isInCart) {
                                        // Remove pet from cart
                                        cartProvider.remove(pet);
                                      } else {
                                        // Add pet to cart
                                        cartProvider.add(pet);
                                      }
                                    },
                                    child: Icon(
                                      isInCart
                                          ? Icons.shopping_cart
                                          : Icons.shopping_cart_outlined,
                                      color: tOrange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
