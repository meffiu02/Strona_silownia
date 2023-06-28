// Zdefiniowanie funkcji obliczającej BMR
function obliczBMR() {
  // Pobranie wartości z pól formularza
  const plec = document.querySelector('input[name="plec"]:checked');
  const waga = document.querySelector('input[name="waga"]');
  const wzrost = document.querySelector('input[name="wzrost"]');
  const wiek = document.querySelector('input[name="wiek"]');
  const aktywnosc = document.querySelector('select[name="aktywnosc"]');

  // Sprawdzenie czy wszystkie pola formularza są uzupełnione
  if (!plec || !waga.value || !wzrost.value || !wiek.value || !aktywnosc.value) {
    Swal.fire('Błąd', 'Proszę uzupełnić wszystkie pola formularza.', 'error');
    return;
  }

  // Sprawdzenie czy wartości liczbowe są dodatnie
  if (parseFloat(waga.value) <= 0 || parseFloat(wzrost.value) <= 0 || parseInt(wiek.value) <= 0 || parseFloat(aktywnosc.value) <= 0) {
    Swal.fire('Błąd', 'Wartości w polach formularza muszą być dodatnie.', 'error');
    return;
  }

  // Sprawdzenie czy wiek nie przekracza 180 lat
  if (parseInt(wiek.value) > 180) {
    Swal.fire('Błąd', 'Maksymalny dopuszczalny wiek to 180 lat.', 'error');
    wiek.value = '';
    wiek.focus();
    return;
  }

  // Sprawdzenie czy wzrost nie przekracza 300 cm
  if (parseFloat(wzrost.value) > 300) {
    Swal.fire('Błąd', 'Maksymalny dopuszczalny wzrost to 300 cm.', 'error');
    wzrost.value = '';
    wzrost.focus();
    return;
  }

  // Pobranie wartości z pól formularza
  const plecValue = plec.value;
  const wagaValue = parseFloat(waga.value);
  const wzrostValue = parseFloat(wzrost.value);
  const wiekValue = parseInt(wiek.value);
  const aktywnoscValue = parseFloat(aktywnosc.value);

  // Obliczenie wartości BMR zgodnie z wzorem
  let bmr;
  if (plecValue === 'mezczyzna') {
    bmr = 88.36 + 13.4 * wagaValue + 4.8 * wzrostValue - 5.7 * wiekValue;
  } else {
    bmr = 447.6 + 9.2 * wagaValue + 3.1 * wzrostValue - 4.3 * wiekValue;
  }
  bmr *= aktywnoscValue;

  const wynikContainer = document.getElementById("wynik-bmr");
wynikContainer.innerHTML = `<strong>Twoje BMR wynosi: ${bmr.toFixed(0)} kcal</strong><br>Aby utrzymać swoją wagę, powinieneś spożywać około ${(bmr * 1.2).toFixed(0)} kcal dziennie`;

}

// Przypisanie funkcji do formularza
const form = document.querySelector('form');
form.addEventListener('submit', function (event) {
  event.preventDefault();
  obliczBMR();
});
