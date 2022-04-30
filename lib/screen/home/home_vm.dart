import 'package:injectable/injectable.dart';
import 'package:traveler/bases/base_view_model.dart';
import 'package:traveler/screen/home/home_m.dart';

@injectable
class HomeViewModel extends BaseViewModel<HomeModel> {
  HomeViewModel() : super(HomeModel());
}
