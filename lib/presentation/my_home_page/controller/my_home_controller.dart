import 'package:asset_manager/api.dart';
import 'package:immo_scanner/core/app_export.dart';
import 'package:immo_scanner/presentation/my_home_page/models/my_home_model.dart';

class MyHomeController extends GetxController {
  MyHomeController(this.myHomeModelObj);

  Rx<MyHomeModel> myHomeModelObj;
  RxList<Asset> assetList = <Asset>[].obs;
  bool dataCreated = false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  createDefaultData() {
    if (!dataCreated) {
      // assetList.value.add(
      //     Asset(
      //       id: "1",
      //       title: "Propriété 7 pièces 205 m²",
      //       description: "propriété 6 chambres, piscine 6000m² terrain",
      //       area: 205,
      //       GES: "B",
      //       DPE: "B",
      //       price: 735000,
      //       roomCount: 7,
      //       pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_180x327_2.png?raw=true"
      //       ));
      // assetList.value.add(
      //     Asset(
      //       id: "2",
      //       title: "Maison 5 pièces 125 m²",
      //       description: "La maison est située à Evreux, dans une voie sans issue",
      //       area: 125,
      //       GES: "C",
      //       DPE: "C",
      //       price: 167000,
      //       roomCount: 5,
      //       pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_2.png?raw=true"
      //       ));
      // assetList.value.add(
      //     Asset(
      //       id: "3",
      //       title: "Maison 6 pièces 128 m²",
      //       description: "Cette maison mitoyenne, proche de la nature",
      //       area: 128,
      //       GES: "B",
      //       DPE: "B",
      //       price: 325000,
      //       roomCount: 6,
      //       pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_1.png?raw=true"
      //       ));
      assetList.value.add(Asset(
        id: "1",
        title: "Propriété 7 pièces 205 m²",
        description: "propriété 6 chambres, piscine 6000m² terrain",
        area: 205,
        GES: "B",
        DPE: "B",
        price: 735000,
        roomCount: 7,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_180x327_2.png?raw=true",
        annonceId: "1",
        city: "Paris",
        postalCode: "75000",
        department: "Paris",
        ownerName: "Jean Dupont",
        ownerSiren: "123456789",
        ownerStoreId: "49684",
        phone: "0123456789",
        realEstateType: "Maison",
        region: "Ile de France",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "B",
            classeNergie: "B",
            nombreDeChambres: "7",
            surface: "205",
            honoraires: "4%",
            tageDuBien: "0",
            typeDeBien: "Maison"),
      ));
      assetList.value.add(Asset(
        id: "2",
        title: "Villa 5 pièces 150 m²",
        description: "Villa avec 4 chambres, jardin 5000m²",
        area: 150,
        GES: "A",
        DPE: "A",
        price: 950000,
        roomCount: 5,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_image_343x343_1.png?raw=true",
        annonceId: "2",
        city: "Nice",
        postalCode: "06000",
        department: "Alpes-Maritimes",
        ownerName: "Pierre Martin",
        ownerSiren: "234567891",
        ownerStoreId: "49685",
        phone: "0987654321",
        realEstateType: "Villa",
        region: "Provence-Alpes-Côte d'Azur",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "A",
            classeNergie: "A",
            nombreDeChambres: "5",
            surface: "150",
            honoraires: "3%",
            tageDuBien: "0",
            typeDeBien: "Villa"),
      ));
      assetList.value.add(Asset(
        id: "3",
        title: "Appartement 3 pièces 80 m²",
        description: "Appartement avec 2 chambres, proche du centre ville",
        area: 80,
        GES: "C",
        DPE: "C",
        price: 400000,
        roomCount: 3,
        pictures:
            "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_image_109x102.png?raw=true",
        annonceId: "3",
        city: "Lyon",
        postalCode: "69000",
        department: "Rhône",
        ownerName: "Claire Lefèvre",
        ownerSiren: "345678912",
        ownerStoreId: "49686",
        phone: "0123432109",
        realEstateType: "Appartement",
        region: "Auvergne-Rhône-Alpes",
        currency: "EUR",
        categoryName: "Vente",
        details: Details(
            GES: "C",
            classeNergie: "C",
            nombreDeChambres: "3",
            surface: "80",
            honoraires: "5%",
            tageDuBien: "2",
            typeDeBien: "Appartement"),
      ));
      assetList.value.add(Asset(
          id: "4",
          title: "Maison 6 pièces 180 m²",
          description: "Maison avec 5 chambres, jardin de 400m²",
          area: 180,
          GES: "D",
          DPE: "D",
          price: 350000,
          roomCount: 6,
          pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/img_img_418x327_2.png?raw=true",
          annonceId: "4",
          city: "Bordeaux",
          postalCode: "33000",
          department: "Gironde",
          ownerName: "Paul Durand",
          ownerSiren: "456789123",
          ownerStoreId: "49687",
          phone: "0928374651",
          realEstateType: "Maison",
          region: "Nouvelle-Aquitaine",
          currency: "EUR",
          categoryName: "Vente",
          details: Details(GES: "D", classeNergie: "D", nombreDeChambres: "6", surface: "180", honoraires: "3%", tageDuBien: "0", typeDeBien: "Maison"),
        ));
  assetList.value.add(
Asset(
          id: "5",
          title: "Studio 1 pièce 30 m²",
          description: "Studio récemment rénové, proche des commerces",
          area: 30,
          GES: "E",
          DPE: "E",
          price: 100000,
          roomCount: 1,
          pictures: "https://github.com/esgi-immo-scanner/mobile_app/blob/main/assets/images/studio_1.jpg?raw=true",
          annonceId: "5",
          city: "Toulouse",
          postalCode: "31000",
          department: "Haute-Garonne",
          ownerName: "Sophie Mercier",
          ownerSiren: "567891234",
          ownerStoreId: "49688",
          phone: "0483927561",
          realEstateType: "Studio",
          region: "Occitanie",
          currency: "EUR",
          categoryName: "Vente",
          details: Details(GES: "E", classeNergie: "E", nombreDeChambres: "1", surface: "30", honoraires: "4%", tageDuBien: "3", typeDeBien: "Studio"),
        ));
      dataCreated = true;
    }
  }
}
