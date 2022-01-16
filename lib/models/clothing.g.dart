// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothing.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class clothingAdapter extends TypeAdapter<clothing> {
  @override
  final int typeId = 1;

  @override
  clothing read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return clothing(
      fields[0] as Uint8List,
      fields[1] as String,
      (fields[2] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, clothing obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imagePath)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is clothingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
