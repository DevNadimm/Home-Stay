import 'package:home_stay/features/home/data/datasources/facility_categories.dart';
import 'package:home_stay/features/home/domain/entities/property/property.dart';
import 'package:home_stay/features/home/domain/entities/property/contact_details.dart';
import 'package:home_stay/features/home/domain/entities/property/facility.dart';
import 'package:home_stay/features/home/domain/entities/property/refund_policy.dart';
import 'package:home_stay/features/home/domain/entities/property/rental_pricing_type.dart';
import 'package:home_stay/features/home/domain/entities/property/review.dart';
import 'package:home_stay/features/home/domain/entities/property/terms_and_conditions.dart';
import 'package:home_stay/features/home/domain/entities/property/general_property.dart';
import 'package:home_stay/features/home/domain/entities/property/property_type.dart';

final List<Property> properties = [
  GeneralProperty(
    propertyType: PropertyType.apartment,
    id: 'APT001',
    name: 'Sunset Villa',
    location: 'Banani, Dhaka',
    area: '1500 sq ft',
    selfCheckIn: true,
    insurance: true,
    price: 7500.00,
    pricingType: RentalPricingType.perNight,
    discountPercentage: 20.0,
    bedroomCount: 3,
    bathroomCount: 2,
    livingRoomCount: 1,
    features: [
      'Family friendly',
      'Free Wi-Fi',
      'Air conditioning',
      '24/7 Security',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.livingRoom,
        features: ['Main living room accommodates 6 person'],
      ),
      Facility(
        category: FacilityCategory.bedrooms,
        features: ['1 bedroom (1 Master Bed)'],
      ),
      Facility(
        category: FacilityCategory.bathroom,
        features: [
          '1 bathroom',
          'bathtub',
          'tissue',
          'soap',
          'shampoo',
          'slippers',
          'shower',
        ],
      ),
      Facility(
        category: FacilityCategory.kitchen,
        features: ['Not available'],
      ),
      Facility(
        category: FacilityCategory.generalAmenities,
        features: [
          'internet',
          'tv',
          'lifts-elevator',
          'self check-in',
        ],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mr. Kamal Hossain',
      phoneNumber: '+8801711123456',
      email: 'kamal@sunsetvilla.com',
      supportHours: '8:00 AM - 9:00 PM',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: true,
      policyDetails: 'Full refund if canceled 5 days prior to check-in.',
      refundDaysBefore: 5,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary: 'No pets, no smoking.',
      fullText:
          'No pets allowed inside the villa. Smoking only allowed outside.',
    ),
    reviews: [
      Review(
        reviewerName: 'Ayesha Rahman',
        rating: 4.9,
        comment: 'Amazing stay, very peaceful and clean.',
        date: DateTime(2024, 5, 15),
      ),
      Review(
        reviewerName: 'Rafiq Islam',
        rating: 4.7,
        comment: 'Loved the location and hospitality.',
        date: DateTime(2024, 6, 20),
      ),
    ],
    images: [
      'https://images.unsplash.com/photo-1618773928121-c32242e63f39?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'https://www.redfin.com/blog/wp-content/uploads/2022/09/spacejoy-xkJ2_THgKmk-unsplash.jpg',
    ],
    videoUrl: 'https://youtube.com/watch?v=sunsetvilla-tour',
  ),
  GeneralProperty(
    propertyType: PropertyType.resort,
    id: 'RES001',
    name: 'Seaside Bliss Resort',
    location: 'Inani Beach, Cox’s Bazar',
    area: '3000 sq ft',
    selfCheckIn: false,
    insurance: true,
    price: 12000.00,
    pricingType: RentalPricingType.perNight,
    bedroomCount: 5,
    bathroomCount: 3,
    livingRoomCount: 2,
    features: [
      'Beachfront view',
      'Private pool',
      'Spa & wellness center',
      '24/7 concierge service',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.generalAmenities,
        features: ['Infinity pool', 'Sunbeds', 'Poolside bar'],
      ),
      Facility(
        category: FacilityCategory.bedrooms,
        features: ['3 luxury suites', 'Sea-facing balcony'],
      ),
      Facility(
        category: FacilityCategory.kitchen,
        features: ['All-day buffet', 'Seafood restaurant'],
      ),
      Facility(
        category: FacilityCategory.generalAmenities,
        features: ['Wi-Fi', 'Cable TV', 'Air conditioning'],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mr. Arif Chowdhury',
      phoneNumber: '+8801700001234',
      email: 'contact@seasidebliss.com',
      supportHours: '24/7 Support',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: true,
      policyDetails: 'Full refund if canceled 7 days prior.',
      refundDaysBefore: 7,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary: 'ID required, no pets.',
      fullText: 'Government ID is mandatory during check-in. Pets not allowed.',
    ),
    reviews: [
      Review(
        reviewerName: 'Maliha Nasrin',
        rating: 4.8,
        comment: 'Amazing view and luxurious experience!',
        date: DateTime(2024, 7, 5),
      ),
    ],
    images: [
      'https://images.trvl-media.com/lodging/34000000/33270000/33263000/33262984/066efb49.jpg?impolicy=resizecrop&rw=575&rh=575&ra=fill',
      'https://sayemanresort.com/wp-content/uploads/2019/10/Panorama-Ocean-Sutie-hm01.jpg',
    ],
    videoUrl: 'https://youtube.com/watch?v=seasidebliss-tour',
  ),
  GeneralProperty(
    propertyType: PropertyType.farm,
    id: 'FARM001',
    name: 'GreenLeaf Organic Farmstay',
    location: 'Mymensingh, Bangladesh',
    area: '5000 sq ft',
    selfCheckIn: true,
    insurance: false,
    price: 3500.00,
    pricingType: RentalPricingType.perNight,
    discountPercentage: 5.0,
    features: [
      'Natural surroundings',
      'Organic food',
      'Eco cottages',
      'Animal interaction',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.generalAmenities,
        features: ['Cow shed', 'Poultry house', 'Vegetable garden'],
      ),
      Facility(
        category: FacilityCategory.livingRoom,
        features: ['Cottage with 2 beds', 'Open verandah'],
      ),
      Facility(
        category: FacilityCategory.kitchen,
        features: ['Clay oven', 'Organic spices available'],
      ),
      Facility(
        category: FacilityCategory.balcony,
        features: ['Fishing pond', 'Bicycle rides', 'Farming workshops'],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mr. Hossain Mia',
      phoneNumber: '+8801712341111',
      email: 'greenleaffarm@gmail.com',
      supportHours: '9:00 AM - 8:00 PM',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: false,
      policyDetails: 'Non-refundable on weekends and holidays.',
      refundDaysBefore: 0,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary: 'Respect nature and animals.',
      fullText:
          'Guests are expected to be eco-conscious and follow farm rules strictly.',
    ),
    reviews: [
      Review(
        reviewerName: 'Sajib Rahman',
        rating: 4.5,
        comment: 'Loved the quiet environment and organic meals.',
        date: DateTime(2024, 6, 12),
      ),
    ],
    images: [
      'https://media.istockphoto.com/id/1330790656/photo/cattle-grazing-with-fence-and-barn-in-the-background-clinton-county-indiana.jpg?s=612x612&w=0&k=20&c=VNLlk0Yx5Jp2yk25F9R2FbGKIVjbAqtewUExvYJJpao='
    ],
    videoUrl: null,
  ),
  GeneralProperty(
    propertyType: PropertyType.apartment,
    id: 'APT002',
    name: 'Green Garden Apartment',
    location: 'Gulshan, Dhaka',
    area: '1100 sq ft',
    selfCheckIn: false,
    insurance: false,
    price: 5200.00,
    pricingType: RentalPricingType.perNight,
    discountPercentage: 35.0,
    features: [
      'Central location',
      'Gym access',
      'Breakfast included',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.gym,
        features: ['Fully equipped gym available 24/7'],
      ),
      Facility(
        category: FacilityCategory.wifi,
        features: ['Free Wi-Fi in all rooms'],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mrs. Shumi Akter',
      phoneNumber: '+8801912345678',
      email: 'shumi.greengarden@gmail.com',
      supportHours: '10:00 AM - 8:00 PM',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: false,
      policyDetails: 'No refund after booking confirmation.',
      refundDaysBefore: 0,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary: 'No loud music after 10 PM.',
      fullText:
          'Guests must respect neighbors and keep noise levels low after 10 PM.',
    ),
    reviews: [
      Review(
        reviewerName: 'Jahid Hasan',
        rating: 4.4,
        comment: 'Comfortable stay and friendly staff.',
        date: DateTime(2024, 7, 10),
      ),
    ],
    images: [
      'https://www.redfin.com/blog/wp-content/uploads/2022/09/spacejoy-xkJ2_THgKmk-unsplash.jpg',
    ],
    videoUrl: null,
  ),
  GeneralProperty(
    propertyType: PropertyType.apartment,
    id: 'APT003',
    name: 'Hilltop Haven',
    location: 'Zindabazar, Sylhet',
    area: '1400 sq ft',
    selfCheckIn: true,
    insurance: false,
    price: 6100.00,
    pricingType: RentalPricingType.perNight,
    discountPercentage: 12.5,
    features: [
      'Mountain view',
      'Private balcony',
      '24-hour front desk',
      'Wi-Fi',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.livingRoom,
        features: ['Large sofa set', 'LED TV', 'Open view'],
      ),
      Facility(
        category: FacilityCategory.bedrooms,
        features: ['2 bedrooms (1 King, 1 Double)'],
      ),
      Facility(
        category: FacilityCategory.kitchen,
        features: ['Induction stove', 'Microwave', 'Dish rack'],
      ),
      Facility(
        category: FacilityCategory.bathroom,
        features: ['2 bathrooms', 'Geyser', 'Shower', 'Towels'],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mr. Faizul Haque',
      phoneNumber: '+8801723456789',
      email: 'faizul@hilltophaven.com',
      supportHours: '9:00 AM - 10:00 PM',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: true,
      policyDetails: 'Full refund available 3 days before check-in.',
      refundDaysBefore: 3,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary: 'No parties, pets allowed with prior approval.',
      fullText:
          'Guests must keep noise low. Pets allowed if declared in advance.',
    ),
    reviews: [
      Review(
        reviewerName: 'Nadia Karim',
        rating: 4.8,
        comment: 'Peaceful and scenic! Great weekend stay.',
        date: DateTime(2024, 6, 10),
      ),
      Review(
        reviewerName: 'Imran Naser',
        rating: 4.6,
        comment: 'Clean rooms and responsive service.',
        date: DateTime(2024, 6, 28),
      ),
    ],
    images: [
      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/547761639.jpg?k=8a0d16f7e22692c00c893fb43b6d8f40630d0b657c06952fa0d77342da2ffaf0&o=&hp=1',
    ],
    videoUrl: null,
  ),
  GeneralProperty(
    propertyType: PropertyType.apartment,
    id: 'APT004',
    name: 'Ocean Breeze Retreat',
    location: 'Laboni Beach, Cox’s Bazar',
    area: '1250 sq ft',
    selfCheckIn: false,
    insurance: true,
    price: 8400.00,
    pricingType: RentalPricingType.perNight,
    features: [
      'Sea view',
      'Complimentary breakfast',
      'Direct beach access',
      'Wi-Fi & Cable TV',
    ],
    facilities: [
      Facility(
        category: FacilityCategory.balcony,
        features: ['Full sea view', 'Sitting area'],
      ),
      Facility(
        category: FacilityCategory.bedrooms,
        features: ['1 bedroom (King size bed)', 'Sea-facing window'],
      ),
      Facility(
        category: FacilityCategory.bathroom,
        features: ['Luxury bathtub', 'Hot water', 'Shower kit'],
      ),
      Facility(
        category: FacilityCategory.generalAmenities,
        features: ['TV', 'Wi-Fi', 'Mini fridge'],
      ),
    ],
    contactDetails: ContactDetails(
      ownerName: 'Mrs. Lubna Jahan',
      phoneNumber: '+8801812345678',
      email: 'lubna@oceanbreeze.com',
      supportHours: '8:00 AM - 11:00 PM',
    ),
    refundPolicy: RefundPolicy(
      isRefundable: false,
      policyDetails: 'No refund available for beachside packages.',
      refundDaysBefore: 0,
    ),
    termsAndConditions: TermsAndConditions(
      shortSummary:
          'No outside food allowed. Early check-in based on availability.',
      fullText:
          'Please follow resort rules. Early check-in may require additional fees.',
    ),
    reviews: [
      Review(
        reviewerName: 'Samiul Hoque',
        rating: 4.2,
        comment: 'Loved the view and the ambiance!',
        date: DateTime(2024, 5, 5),
      ),
    ],
    images: [
      'https://spcdn.shortpixel.ai/spio/ret_img,q_cdnize,to_webp,s_webp/rent.brookfieldproperties.com/wp-content/uploads/2024/05/AtelierTower-61_Web-1024x683.jpg',
    ],
    videoUrl: 'https://youtube.com/watch?v=oceanbreezeretreat',
  ),
];
