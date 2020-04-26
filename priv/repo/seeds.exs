# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     StarTrack.Repo.insert!(%StarTrack.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


alias StarTrack.Repo
alias StarTrack.Game.Character

Repo.delete_all(Character)

Repo.insert!(%Character{
  name: "Carmen",
  biography: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
  image_url: "https://iili.io/JAIV8G.jpg"
})

Repo.insert!(%Character{
  name: "Sam",
  biography: "Nullam orci elit, iaculis at gravida non, imperdiet quis mauris. Nam sed lacinia purus, sit amet finibus nisi. Donec varius consectetur metus, in ullamcorper ipsum venenatis ut.",
  image_url: "https://iili.io/JA7tKN.jpg"
})

Repo.insert!(%Character{
  name: "Diego",
  biography: "Pellentesque eget diam ullamcorper, vestibulum leo sed, ornare odio. Vivamus non eros purus. Quisque volutpat neque ipsum, ut varius justo gravida vel. Nam et arcu a tellus pulvinar scelerisque.",
  image_url: "https://iili.io/JAIMas.jpg"
})

Repo.insert!(%Character{
  name: "Carolina",
  biography: "Cras volutpat venenatis tristique. Sed aliquet dui vel orci faucibus porta. Phasellus eget quam at arcu convallis consequat id eget dolor. Pellentesque lacinia nisi sed augue blandit, sed feugiat neque malesuada. Integer commodo pellentesque libero, non luctus ligula bibendum a.",
  image_url: "https://iili.io/JAYwJt.jpg"
})

Repo.insert!(%Character{
  name: "Tarcísio",
  biography: "Nulla nec fermentum mauris, sed tempor ligula. Vivamus mattis mollis libero, sit amet dignissim sapien lobortis vel. Nam in sagittis justo, sit amet volutpat sapien. Nullam faucibus ex eu mi congue porttitor.",
  image_url: "https://iili.io/JAYOen.jpg"
})

Repo.insert!(%Character{
  name: "Duda",
  biography: "Nulla posuere eros orci, at vehicula ligula convallis eget. Curabitur feugiat augue in augue mattis, eu luctus justo tincidunt. Morbi ut tellus lectus. Duis sit amet porttitor metus, vitae varius erat. Proin tristique enim metus, id hendrerit tellus vehicula at.",
  image_url: "https://iili.io/JAYN5X.jpg"
})
