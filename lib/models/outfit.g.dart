// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outfit.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class outfitAdapter extends TypeAdapter<outfit> {
  @override
  final int typeId = 2;

  @override
  outfit read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return outfit(
      (fields[0] as List)?.cast<clothing>(),
      fields[1] as String,
      fields[2] as int,
      (fields[3] as List)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, outfit obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.clothes)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.colour)
      ..writeByte(3)
      ..write(obj.tags);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is outfitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
