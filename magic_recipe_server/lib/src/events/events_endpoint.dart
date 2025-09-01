import 'package:magic_recipe_server/src/generated/protocol.dart';
import 'package:serverpod/serverpod.dart';

class EventsEndpoint extends Endpoint {
  Future<List<PublicEvent>> getEvents(Session session) async {
    // final authInfo = await session.authenticated;
    // if (authInfo != null) {
    final eventsQuery = await PublicEvent.db.find(session,
        where: (event) {
          final dateTime = event.startDate;
          return dateTime > DateTime.now();
        },
        orderBy: (table) => table.startDate);
    if (eventsQuery.isNotEmpty) {
      return eventsQuery;
    } else {
      return <PublicEvent>[];
    }
    // }
    // throw NotAuthorizedException(
    //     ResultAuthenticationFailed.unauthenticated('Unauthenticated'));
  }
}
