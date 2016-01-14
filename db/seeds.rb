def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}"))
end

event = Event.create!({
  date: Date.parse("2016-08-06"),
  location: "Christ Episcopal Church, Burlington, Iowa",
  active: true,
  title: "Hannah & Lucas",
  partner_one: "Hannah",
  partner_two: "Lucas",
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

To get directions <a href=\"https://www.google.co.uk/maps/dir//Christ+Episcopal+Church,+Burlington,+IA+52601\" target=\"_blank\" style=\"target-new: tab;\">click here</a>
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

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mike Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kris Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jake Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Shawn Croghan',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kathy Amos',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Doug Arndt',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kim Arndt',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Josh Berard',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Nicole Berard',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Brian Bond',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Rhonda Bond',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mike Bredesky',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jan Bredesky',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Brown',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jessica Brown',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jeff Cranston',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Beth Cranston',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Justin Crouch',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Bethany Crouch',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Karen Deters',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Glenda Grother',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Larry Hyler',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Anne Hyler',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Adam Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Amanda Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Michael Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kelsey Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Randy Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jane Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tim Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Dan King',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Dave King',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Dana King',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ken King',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Michelle King',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jan Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Pat Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Michelle Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kris Klinker',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mike Merritt',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Lisa Schaeg',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Nancy Merritt',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Tim Hayden',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jerry Richards',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Mary Richards',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Scott',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Patty Scott',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kevin Spitzig',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Natalie Spitzig',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Larry Stout',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Michelle Stout',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jon Studer',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Mary Studer',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Carr Terpstra',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Allyson Terpstra',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mrs. Grace Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Paul Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Judy Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mark Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'RoseMary Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Brittany Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Chris Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Katie Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Dean Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Bobbi Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Eric Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Holly Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jeff Thompson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Susan Veatch',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Lindsey Veatch',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tim Veatch',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Dan Vessely',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Mona Vessely',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Nate Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Ari Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Steve Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Tonya Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Rachel Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Anne Williams',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Joe York',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jami York',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Marv Zimmerman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Connie Zimmerman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tim Madden',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Liza Madden',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tim Swiontek',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Patrice Swiontek',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jake Alleman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Brandal Wagener',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Brett Deters',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jorden Studer',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Sydney Davis',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mike Watkins',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Shawn Wells',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jackson Allen',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kyle Doerhoff',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Harold Howe',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Carter Winton',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Vincent',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ben Madden',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Annie Starykowicz',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Swiontek',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Amy Kopale',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Liz Wilson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'John Downer',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Eric Pahl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jill Nagle',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Chris Hoover',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Maria Palladino',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Michelle Durkin',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kim Durkin',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kyle Henneghan',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Liz Hughes',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Bob Meyer',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jon Shuty',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Amanda Murasko',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tim Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Suzie Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Christian Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Noah Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Ashley Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mimi Niehaus',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Perry ReplaceMe',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Frank Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Betty Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mary Pandey',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Sanjeeve Pandey',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ron Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Cindy Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Stephen Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Ashley Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Amy Scerbo',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Carmine Scerbo',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kathryn Hills',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jay Hills',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'John Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Bethanie Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Bonnie Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Bob Johnson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ross Cudney',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Brooke Cudney',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kevin Scheid',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Becky Scheid',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mike Werner',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Chris Werner',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Bud Crowl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Anne Crowl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Matt Crowl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Holly Crowl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Mark Hagemeier',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Cathy Hagemeier',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kurt Crowl-Kinney',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Amy Crowl-Kinney',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Marcia Rutherford',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Austin Rutherford',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kristin Rutherford',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Darin Rutherford',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kristi Rutherford',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kim ReplaceMe',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Steve ReplaceMe',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Julie Elsberry',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Russ Kuhlemier',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Annette Kuhlemier',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Hatter Hensley',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Julie Hensley',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'John Carl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Ann Carl',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Josh Osborn',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Olivia Osborn',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Zeke Osborn',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Neil Pohren',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kim Pohren',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Dylan Nelson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Courtney Nelson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Tucker Nelson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Lauren Majewski',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Max Sim',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Peg Majewski',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Frank Majewski',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Allison Reyhons',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Tyler Redman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Julie Reyhons',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Scott Reyhons',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Marcia Olson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'John Olson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Lloyd Caston',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Velma Caston',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Luden Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Tremble Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Sawyer Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Rob Russell',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Suzanne Russell',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ed Whitham',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Marsha Whitham',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jessica Reineman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jeremy Reineman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jessica Dennis',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Bo Dennis',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Lori Bowman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Brian Bowman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kelly Sager',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Will Sager',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Heidi Bogers',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Justin Bogers',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jenny Nalevanko',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jonathan Nalevanko',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Cindy Hicks',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Buddy Hicks',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kayla Shipman',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Elyse Webb',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Nicole Schroder',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Bailey Robinson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Austin Durnan',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Rachelle Knapp',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Zack Robinson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Courtney Anderson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jon Anderson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kelly Murphy',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kayci McChristy',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Jordan Brosi',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Sonja Gilbertson',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jared Weber',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Erin Manfull',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Kortney Taylor',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Alex Demanett',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Taylor VanNaarden',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Rachel Spector',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Houge Family',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Bobbi Graham',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Cheri Reid',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Cheryl Wright',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Jessica Stevens',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Ashleigh Harris',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Guest',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})

group = Group.create!({
  event_id: event.id
})
Guest.create!({
  name: 'Laura Durkee',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})
Guest.create!({
  name: 'Kendal Durkee',
  invited_to_ceremony: true, invited_to_evening: true,
  group_id: group.id, event_id: event.id
})