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
  biography: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  image_url: "https://iili.io/JAIV8G.jpg"
})

Repo.insert!(%Character{
  name: "Sam",
  biography: "Nullam orci elit, iaculis at gravida non, imperdiet quis mauris. Nam sed lacinia purus, sit amet finibus nisi. Donec varius consectetur metus, in ullamcorper ipsum venenatis ut. Nulla at enim sollicitudin, suscipit odio sed, fermentum metus. Nulla non ex ipsum. Phasellus finibus urna metus, sed lacinia odio venenatis eu. Nulla mattis eu sapien ut dapibus. Nulla condimentum mi eget orci aliquet, at gravida justo maximus. Nullam vestibulum at massa blandit venenatis.",
  image_url: "https://iili.io/JAIX9f.jpg"
})

Repo.insert!(%Character{
  name: "Diego",
  biography: "Pellentesque eget diam ullamcorper, vestibulum leo sed, ornare odio. Vivamus non eros purus. Quisque volutpat neque ipsum, ut varius justo gravida vel. Nam et arcu a tellus pulvinar scelerisque. Sed accumsan gravida cursus. Praesent convallis fermentum aliquet. Suspendisse viverra, orci id accumsan vehicula, neque urna imperdiet purus, ac cursus dolor enim blandit arcu.",
  image_url: "https://iili.io/JAIMas.jpg"
})
