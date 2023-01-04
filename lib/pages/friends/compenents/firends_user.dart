class User {
  final String name;
  final String urlImage;

  const User({
    required this.name,
    required this.urlImage,
    
  });
}

const allUsers = [
  User(
    name: 'Ömer Çelik', urlImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Eric_Bana_at_the_2009_Tribeca_Film_Festival.jpg/1200px-Eric_Bana_at_the_2009_Tribeca_Film_Festival.jpg'
  ),
  User(
    name: 'Kadri Bulut', urlImage: 'https://upload.wikimedia.org/wikipedia/commons/b/bb/Judd_Apatow_2012_Shankbone.JPG'),
  User(
    name: 'Merve Koçak', urlImage: 'https://upload.wikimedia.org/wikipedia/commons/0/0d/Leslie_Mann_at_SXSW_Red_Carpet_premiere_of_BLOCKERS_%2839852917225%29_%28cropped%29.jpg'),
  User(
    name: 'Ali Murat Kurtoğlu', urlImage: 'https://i.pinimg.com/564x/cf/25/74/cf25748492a5022ca9a735b11eed75f8--funny-people-man-crush.jpg')
];
