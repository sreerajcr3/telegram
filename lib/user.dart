class User{

  final String name;
  final String message;
  final String image;
  final String time;

   User(
    this.name,
    this.message,
    this.image,
    this.time,
    );
}

List users =[
  User('Ziya','new message','https://imgs.search.brave.com/VbikXE7HDDTvqTonoSYCttNh2TLy9gfvvcnPP0NQW4g/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTI2/MzMwNzY4OS9waG90/by95b3VuZy13b21h/bnMtZmFzaGlvbi1z/dHlsZS15b3VuZy1w/cmV0dHktZmFzaGlv/bmVkLWdpcmwuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPXZF/ZWlNaVc3VDBOTWFY/bnlMLWd2UXVKZk1q/bnZIaEFoeS01cmE4/Zm93UDg9','2:00 pm'),
  User('Arshad','new message', 'https://imgs.search.brave.com/7505gCqLbA7OkL9xDLevs-xaG3tDVptHCPWnpzLWhXs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dWttb2RlbHMuY28u/dWsvd3AtY29udGVu/dC91cGxvYWRzLzIw/MTYvMTAvbW9kZWxs/aW5nLWxpYnJhcnkt/bWFsZS1tb2RlbHMu/anBn','2:12 pm'),
  User('Jacquiline', 'new message', 'https://imgs.search.brave.com/GUD2PjAzTvrnjFraeSkMe5rb6lbQBR_4HwN06VzQ4Xg/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2NhL2Zh/L2QyL2NhZmFkMmM0/MDJlNmMyM2E5ODA4/ZDMxY2RiZDg1ZDE0/LS1tYWtldXAtZ29h/bHMtbWFrZXVwLXRp/cHMuanBn','1:00 pm'),
  User('Stephy', 'new message', 'https://imgs.search.brave.com/mVK6JZbiJzTdmXSBAqg8GYe-0KkJjUJYCctkRObrFKY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2M3Lzdh/LzllL2M3N2E5ZTA5/NmZiMTA2NmQ2NWNi/M2JjMzEzYjdlMGRm/LS1naXJsLXBvd2Vy/LXVuaXZlcnNlLmpw/Zw','3:55 pm'),
  User('Susi', 'new message', 'https://imgs.search.brave.com/ObgbdZNrdbliN03uDrFbjPqSQH2uNtFY2qasVDENKiM/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9vZG13ci5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjMv/MDIvMzQuLUpvc2Vw/aGluZS1Ta3JpdmVy/LmpwZw','4:07 pm'),
  User('Mathew', 'new message', 'https://imgs.search.brave.com/IA_qPcXWGVikvPPihh2MAzCtFcJ4PYfBLqesUwsxAeY/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2YxL2Qz/LzYwL2YxZDM2MDJk/MWY5Mzc3MGYyNDY4/OTA1YTQ0YTE5OGU2/LmpwZw','6:00 pm'),
  User('Amal', 'new message', 'https://imgs.search.brave.com/puo64mnqdb_dnz9ziMDJ7iZ87XEsKT352Kr_xcqRSSw/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dGVsZWdyYXBoLmNv/LnVrL211bHRpbWVk/aWEvYXJjaGl2ZS8w/MjQ4MS9Kb3NlX01v/dXJpbmhvXzI0ODE1/NjJrLmpwZw','7:09 pm'),
  User('Ansa', 'new message', 'https://imgs.search.brave.com/Szkgftw-79ivOUr6q42c0DHkElFI20P6JTfvogqTURQ/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/aG9vZG13ci5jb20v/d3AtY29udGVudC91/cGxvYWRzLzIwMjMv/MDIvMjguLUJhcmJh/cmEtUGFsdmluLmpw/Zw','2:00 pm'),
  User('Mary', 'new message', 'https://imgs.search.brave.com/9WzeIFA967SnrEMXyTkTzX0AidsPlLnjjAjJL4qDOac/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzFjLzUy/LzAwLzFjNTIwMDcz/NDIyYTc3OWI1YjMy/NmE0ZWU1Yzc2MDJm/LS1waG90b2dyYXBo/eS1pZGVhcy1hbmRy/ZWEtcnVzc2V0dC1v/dXRmaXRzLmpwZw','4:00 pm'),

];