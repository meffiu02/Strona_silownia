// Pobranie elementów formularza BMI
const formBmi = document.querySelector('#bmi form');
const weightInput = formBmi.querySelector('input[name="waga"]');
const heightInput = formBmi.querySelector('input[name="wzrost"]');
const resultBmi = document.querySelector('#wynik-bmi');

// Funkcja obliczająca BMI i zwracająca wynik i typ BMI
function calculateBmi(weight, height) {
  const heightMeters = height / 100;
  const bmi = weight / (heightMeters ** 2);
  let bmiType;

  // Sprawdzenie, czy pola formularza są puste
  if (weightInput.value === '' || heightInput.value === '') {
    Swal.fire('Błąd', 'Proszę uzupełnić wszystkie pola formularza.', 'error');
    return;
  }

  // Sprawdzenie, czy waga i wzrost są dodatnie
  if (weight <= 0 || height <= 0) {
    Swal.fire('Błąd', 'Wartości wagi i wzrostu muszą być dodatnie.', 'error');
    return;
  }

  // Sprawdzenie, czy wzrost nie przekracza 300 cm
  if (height > 300) {
    Swal.fire({
      title: 'Błąd',
      text: 'Maksymalny dopuszczalny wzrost to 300 cm.',
      icon: 'error',
      onClose: () => {
        heightInput.value = '';
        heightInput.focus();
      }
    });
    return;
  }

  if (bmi < 18.5) {
    bmiType = 'niedowagę';
  } else if (bmi >= 18.5 && bmi < 25) {
    bmiType = 'prawidłową wagę';
  } else if (bmi >= 25 && bmi < 30) {
    bmiType = 'nadwagę';
  } else {
    bmiType = 'otyłość';
  }

  return [bmi.toFixed(2), bmiType];
}

// Obsługa formularza BMI - obliczenie i wyświetlenie wyniku BMI po kliknięciu przycisku
formBmi.addEventListener('submit', function(event) {
  event.preventDefault();
  const weight = weightInput.value;
  const height = heightInput.value;
  const bmiData = calculateBmi(weight, height);

  if (bmiData) {
    const [bmi, bmiType] = bmiData;
    resultBmi.textContent = `${bmi} oznacza to ${bmiType}`;
  }
});
