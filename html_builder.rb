def head
    "<!DOCTYPE html>
    <html lang='en'> 
    <head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <meta http-equiv='X-UA-Compatible' content='ie=edge'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css'>
    <title>Mision Marte Nasa</title>
    </head>
    <body>"
end
def navbar
    "<nav class='navbar navbar-expand-lg navbar-light bg-light'>
    <div class='container-fluid'>
      <a class='navbar-brand' href='#'>Navbar</a>
      <button class='navbar-toggler' type='button' data-bs-toggle='collapse' data-bs-target='#navbarNavDropdown' aria-controls='navbarNavDropdown' aria-expanded='false' aria-label='Toggle navigation'>
        <span class='navbar-toggler-icon'></span>
      </button>
      <div class='collapse navbar-collapse' id='navbarNavDropdown'>
        <ul class='navbar-nav'>
          <li class='nav-item'>
            <a class='nav-link active' aria-current='page' href='#'>Home</a>
          </li>
          <li class='nav-item'>
            <a class='nav-link' href='#'>Features</a>
          </li>
          <li class='nav-item'>
            <a class='nav-link' href='#'>Pricing</a>
          </li>
          <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
              Dropdown link
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'>
              <li><a class='dropdown-item' href='#'>Action</a></li>
              <li><a class='dropdown-item' href='#'>Another action</a></li>
              <li><a class='dropdown-item' href='#'>Something else here</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </nav>"
end

def footer
    "<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.1/js/bootstrap.min.js'></script>
    \t</body> 
    <\html>"
end

def card(photo,id)
  "<div class='card mx-3 col'>
    <img src='#{photo}' class='card-img-top p-1' width='400' height= '400'>
    <div class='card-body'>
      <h5 class='card-title'>ID de foto: #{id}</h5>
      <p class='card-text'>This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      <p class='card-text'><small class='text-muted'>Last updated 3 mins ago</small></p>
    </div>
  </div>"
end
