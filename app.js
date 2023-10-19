// Sample car data array
let cars = [];

// Simulate user authentication
let authenticated = false;

document.getElementById('signupForm').addEventListener('submit', function(e) {
    e.preventDefault();
    alert('Signup successful');
    authenticated = true;
});

document.getElementById('loginForm').addEventListener('submit', function(e) {
    e.preventDefault();
    if (authenticated) {
        document.getElementById('auth').style.display = 'none';
        document.getElementById('dashboard').style.display = 'block';
    } else {
        alert('Invalid credentials');
    }
});

document.getElementById('carForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const carImage = document.getElementById('carImage').files[0];
    const carTitle = document.getElementById('carTitle').value;
    const carDescription = document.getElementById('carDescription').value;

    cars.push({
        image: URL.createObjectURL(carImage),
        title: carTitle,
        description: carDescription
    });

    displayCars();
});

function displayCars() {
    const carList = document.getElementById('carList');
    carList.innerHTML = '';

    cars.forEach(car => {
        const carDiv = document.createElement('div');
        carDiv.innerHTML = `
            <img src="${car.image}" alt="${car.title}">
            <h3>${car.title}</h3>
            <p>${car.description}</p>
            <button onclick="deleteCar('${car.title}')">Delete</button>
        `;
        carList.appendChild(carDiv);
    });
}

function deleteCar(title) {
    cars = cars.filter(car => car.title !== title);
    displayCars();
}

function applyFilters() {
    // Apply your filtering logic here
}