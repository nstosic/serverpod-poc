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
import 'package:serverpod/serverpod.dart' as _i1;
import '../model/user.dart' as _i2;

abstract class PublicEvent
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PublicEventTable();

  static const db = PublicEventRepository._();

  @override
  int? id;

  String name;

  String? photoUrl;

  DateTime startDate;

  DateTime endDate;

  List<_i2.User> attendees;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'name': name,
      if (photoUrl != null) 'photoUrl': photoUrl,
      'startDate': startDate.toJson(),
      'endDate': endDate.toJson(),
      'attendees': attendees.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static PublicEventInclude include() {
    return PublicEventInclude._();
  }

  static PublicEventIncludeList includeList({
    _i1.WhereExpressionBuilder<PublicEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PublicEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PublicEventTable>? orderByList,
    PublicEventInclude? include,
  }) {
    return PublicEventIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PublicEvent.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PublicEvent.t),
      include: include,
    );
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

class PublicEventTable extends _i1.Table<int?> {
  PublicEventTable({super.tableRelation}) : super(tableName: 'public_event') {
    name = _i1.ColumnString(
      'name',
      this,
    );
    photoUrl = _i1.ColumnString(
      'photoUrl',
      this,
    );
    startDate = _i1.ColumnDateTime(
      'startDate',
      this,
    );
    endDate = _i1.ColumnDateTime(
      'endDate',
      this,
    );
    attendees = _i1.ColumnSerializable(
      'attendees',
      this,
    );
  }

  late final _i1.ColumnString name;

  late final _i1.ColumnString photoUrl;

  late final _i1.ColumnDateTime startDate;

  late final _i1.ColumnDateTime endDate;

  late final _i1.ColumnSerializable attendees;

  @override
  List<_i1.Column> get columns => [
        id,
        name,
        photoUrl,
        startDate,
        endDate,
        attendees,
      ];
}

class PublicEventInclude extends _i1.IncludeObject {
  PublicEventInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PublicEvent.t;
}

class PublicEventIncludeList extends _i1.IncludeList {
  PublicEventIncludeList._({
    _i1.WhereExpressionBuilder<PublicEventTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PublicEvent.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PublicEvent.t;
}

class PublicEventRepository {
  const PublicEventRepository._();

  /// Returns a list of [PublicEvent]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<PublicEvent>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PublicEventTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PublicEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PublicEventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PublicEvent>(
      where: where?.call(PublicEvent.t),
      orderBy: orderBy?.call(PublicEvent.t),
      orderByList: orderByList?.call(PublicEvent.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PublicEvent] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<PublicEvent?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PublicEventTable>? where,
    int? offset,
    _i1.OrderByBuilder<PublicEventTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PublicEventTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PublicEvent>(
      where: where?.call(PublicEvent.t),
      orderBy: orderBy?.call(PublicEvent.t),
      orderByList: orderByList?.call(PublicEvent.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PublicEvent] by its [id] or null if no such row exists.
  Future<PublicEvent?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PublicEvent>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PublicEvent]s in the list and returns the inserted rows.
  ///
  /// The returned [PublicEvent]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PublicEvent>> insert(
    _i1.Session session,
    List<PublicEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PublicEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PublicEvent] and returns the inserted row.
  ///
  /// The returned [PublicEvent] will have its `id` field set.
  Future<PublicEvent> insertRow(
    _i1.Session session,
    PublicEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PublicEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PublicEvent]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PublicEvent>> update(
    _i1.Session session,
    List<PublicEvent> rows, {
    _i1.ColumnSelections<PublicEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PublicEvent>(
      rows,
      columns: columns?.call(PublicEvent.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PublicEvent]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PublicEvent> updateRow(
    _i1.Session session,
    PublicEvent row, {
    _i1.ColumnSelections<PublicEventTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PublicEvent>(
      row,
      columns: columns?.call(PublicEvent.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PublicEvent]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PublicEvent>> delete(
    _i1.Session session,
    List<PublicEvent> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PublicEvent>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PublicEvent].
  Future<PublicEvent> deleteRow(
    _i1.Session session,
    PublicEvent row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PublicEvent>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PublicEvent>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PublicEventTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PublicEvent>(
      where: where(PublicEvent.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PublicEventTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PublicEvent>(
      where: where?.call(PublicEvent.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
