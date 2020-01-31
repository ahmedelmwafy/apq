class SignUpModel {
    String value;
    String key;
    Data data;

    SignUpModel({this.value, this.key, this.data});

    SignUpModel.fromJson(Map<String, dynamic> json) {
        value = json['value'];
        key = json['key'];
        data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['value'] = this.value;
        data['key'] = this.key;
        if (this.data != null) {
            data['data'] = this.data.toJson();
        }
        return data;
    }
}

class Data {
    String jwtToken;
    String code;
    String phone;

    Data({this.jwtToken, this.code, this.phone});

    Data.fromJson(Map<String, dynamic> json) {
        jwtToken = json['jwt_token'];
        code = json['code'];
        phone = json['phone'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['jwt_token'] = this.jwtToken;
        data['code'] = this.code;
        data['phone'] = this.phone;
        return data;
    }
}