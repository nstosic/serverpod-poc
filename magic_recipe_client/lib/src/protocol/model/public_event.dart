/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import '../model/user.dart' as _i2;

abstract class PublicEvent implements _i1.SerializableModel {
  PublicEvent._({
    this.id,
    required this.name,
    this.photoUrl,
    required this.startDate,
    required this.endDate,
    required this.attendees,
  });

  factory PublicEvent({
    int? id,
    required String name,
    String? photoUrl,
    required DateTime startDate,
    required DateTime endDate,
    required List<_i2.User> attendees,
  }) = _PublicEventImpl;

  factory PublicEvent.fromJson(Map<String, dynamic> jsonSerialization) {
    return PublicEvent(
      id: jsonSerialization['id'] as int?,
      name: jsonSerialization['name'] as String,
      photoUrl: jsonSerialization['photoUrl'] as String?,
      startDate:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startDate']),
      endDate: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endDate']),
      attendees: (jsonSerialization['attendees'] as List)
          .map((e) => _i2.User.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String name;

  String? photoUrl;

  DateTime startDate;

  DateTime endDate;

  List<_i2.User> attendees;

  /// Returns a shallow copy of this [PublicEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PublicEvent copyWith({
    int? id,
    String? name,
    String? photoUrl,
    DateTime? startDate,
    DateTime? endDate,
    List<_i2.User>? attendees,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (photoUrl != null) 'photoUrl': photoUrl,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'attendees': attendees.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PublicEventImpl extends PublicEvent {
  _PublicEventImpl({
    int? id,
    required String name,
    String? photoUrl,
    required DateTime startDate,
    required DateTime endDate,
    required List<_i2.User> attendees,
  }) : super._(
          id: id,
          name: name,
          photoUrl: photoUrl,
          startDate: startDate,
          endDate: endDate,
          attendees: attendees,
        );

  /// Returns a shallow copy of this [PublicEvent]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PublicEvent copyWith({
    Object? id = _Undefined,
    String? name,
    Object? photoUrl = _Undefined,
    DateTime? startDate,
    DateTime? endDate,
    List<_i2.User>? attendees,
  }) {
    return PublicEvent(
      id: id is int? ? id : this.id,
      name: name ?? this.name,
      photoUrl: photoUrl is String? ? photoUrl : this.photoUrl,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      attendees:
          attendees ?? this.attendees.map((e0) => e0.copyWith()).toList(),
    );
  }
}
