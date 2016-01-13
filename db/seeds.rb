def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

event = Event.create!({
  date: Date.parse("2016-08-06"),
  location: "Christ Episcopal Church, Burlington, Iowa",
  active: true,
  title: "Hannah & Lucas",
  partner_one: "Lucas",
  partner_two: "Hannah",
  venue_name: "Christ Episcopal Church",
  venue_address_line_one: "623 N. Fifth St",
  venue_address_city: "Burlington",
  venue_address_state: "Iowa",
  venue_address_zip: "52601",
  venue_address_country: "United States",
  venue_body: """
The ceremony will be held at Christ Episcopal Church. The reception, which will start immediately after the wedding, will be down on the river, at the Burlington Memorial Auditorium.
  """,
  venue_directions: """
**Ceremony from I-34 East:** Take exit 262B and continue on High St for a quarter mile.

**Ceremony from I-34 West:** Take the Main St exit and go south a half mile to Court St. Follow Court St for another half mile to arrive at the church.

To get directions [click here](https://www.google.co.uk/maps/dir//Christ+Episcopal+Church,+Burlington,+IA+52601).
  """
})

venue_photos = VenuePhoto.create!([
  { event_id: event.id, file: seed_image("venue_photos/1.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/2.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/3.jpg") },
  { event_id: event.id, file: seed_image("venue_photos/4.jpg") }
])

event.primary_venue_photo = venue_photos.last.id
event.save!

klinkers = Group.create!({
  event_id: event.id
})

johnsons = Group.create!({
  event_id: event.id
})

luke = Guest.create!({
  name: "Luke Klinker",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: klinkers.id,
  event_id: event.id
})

hannah = Guest.create!({
  name: "Hannah Johnson",
  rsvp: true,
  invited_to_ceremony: true,
  invited_to_evening: true,
  group_id: johnsons.id,
  event_id: event.id
})