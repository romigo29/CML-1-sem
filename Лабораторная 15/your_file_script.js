let photo1 = document.getElementById('photo1');
let photo2 = document.getElementById('photo2');
let photo4 = document.getElementById('photo4');

// Наведение на первую фотографию
photo1.addEventListener('mouseover', function () {
    this.querySelector('img').style.display = 'none';
    this.querySelector('figcaption').style.display = 'none';
    this.querySelector('#description').style.display = 'block';
});

photo1.addEventListener('mouseout', function () {
    this.querySelector('#description').style.display = 'none';
    this.querySelector('img').style.display = 'block';
    this.querySelector('figcaption').style.display = 'block';
});

// Щелчок на второй фотографии
photo2.addEventListener('click', function () {
    this.style.border = '10px solid red';
});

// Наведение на последнюю фотографию
const originalPhoto4Src = photo4.querySelector('img').src;
const newPhoto4Src = 'new_night.png';

photo4.addEventListener('mouseover', function () {
    this.querySelector('img').src = newPhoto4Src;
});

photo4.addEventListener('mouseout', function () {
    this.querySelector('img').src = originalPhoto4Src;
});

//Работа с формой

document.getElementById('submitButton').addEventListener('click', function () {
    const form = document.getElementById('studentForm');
    const formOutput = document.getElementById('formOutput');

    // Получаем все элементы формы
    const formData = new FormData(form);

    // Создаем строку для вывода данных формы в footer
    let output = '<h3>Введенные данные:</h3><ul>';
    for (let pair of formData.entries()) {
        output += `<li><strong>${pair[0]}:</strong> ${pair[1]}</li>`;
    }
    output += '</ul>';

    // Выводим данные формы в footer
    formOutput.innerHTML = output;
});
