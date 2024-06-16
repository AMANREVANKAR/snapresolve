
import 'dart:io';

import 'package:sanpresolve/features/complaint_form/data/models/userimage.dart';
import 'package:sanpresolve/features/complaint_form/data/remotedatasources/dataresource.dart';

class UseCases{
  Future<String?>  UserImagePicked (String? userimagepath)async 
  {
    DataSources apicall =DataSources();
    UserImage user=UserImage();
    user.userimage=userimagepath!;
    String url = 'http://192.168.22.1:8000/api/imageClassifier';
    return await apicall.uploadFileDio(url, userimagepath);
  }
}