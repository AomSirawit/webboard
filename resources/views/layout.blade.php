<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Prompt:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
        <script src="https://cdn.tailwindcss.com"></script>
    <title>@yield('title') | ITFeature</title>
</head>
<div class="bg-white">
    <nav class="container mx-auto flex justify-between items-center py-4">
      <a href="#" class="text-white font-bold text-2xl" style="color :#3F3F3F">IT<span style="color: #FCA311">Feature</span></a>
      <div class="flex space-x-4">
        <a href="#" class="hover:underline font-medium" style="color: #3F3F3F" >Log in</a>
        <a href="#" class="hover:underline font-medium" style="color: #3F3F3F">Sign up</a>
      </div>
    </nav>
  </div>

  <div class="container py-4 mx-auto">
    @yield('content')
  </div>
  

<body>  

</body>

</html>
