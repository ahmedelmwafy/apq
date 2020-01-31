class ServicesModel {
    String value;
    String key;
    Data data;

    ServicesModel({this.value, this.key, this.data});

    ServicesModel.fromJson(Map<String, dynamic> json) {
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
    List<Services> services;

    Data({this.services});

    Data.fromJson(Map<String, dynamic> json) {
        if (json['services'] != null) {
            services = new List<Services>();
            json['services'].forEach((v) {
                services.add(new Services.fromJson(v));
            });
        }
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.services != null) {
            data['services'] = this.services.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Services {
    int id;
    String name;
    String image;
    String desc;

    Services({this.id, this.name, this.image, this.desc});

    Services.fromJson(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        image = json['image'];
        desc = json['desc'];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['image'] = this.image;
        data['desc'] = this.desc;
        return data;
    }
}