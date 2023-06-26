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
    alert("Proszę uzupełnić wszystkie pola formularza.");
    return;
  }

  // Sprawdzenie czy wartości liczbowe są dodatnie
  if (parseFloat(waga.value) <= 0 || parseFloat(wzrost.value) <= 0 || parseInt(wiek.value) <= 0 || parseFloat(aktywnosc.value) <= 0) {
    alert("Wartości w polach formularza muszą być dodatnie.");
    return;
  }

  // Sprawdzenie czy wiek nie przekracza 180 lat
  if (parseInt(wiek.value) > 180) {
    alert("Maksymalny dopuszczalny wiek to 180 lat.");
    wiek.value = "";
    wiek.focus();
    return;
  }

  // Sprawdzenie czy wzrost nie przekracza 300 cm
  if (parseFloat(wzrost.value) > 300) {
    alert("Maksymalny dopuszczalny wzrost to 300 cm.");
    wzrost.value = "";
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
  if (plecValue === "mezczyzna") {
    bmr = 88.36 + (13.4 * wagaValue) + (4.8 * wzrostValue) - (5.7 * wiekValue);
  } else {
    bmr = 447.6 + (9.2 * wagaValue) + (3.1 * wzrostValue) - (4.3 * wiekValue);
  }
  bmr *= aktywnoscValue;

  // Wyświetlenie wyniku na stronie
  const wynik = document.querySelector('#wynik-bmr');
  wynik.innerHTML = `<strong>${bmr.toFixed(0)}</strong> kcal<br> Aby utrzymać swoją wagę, powinieneś spożywać około <strong><br>${(bmr * 1.2).toFixed(0)}</strong> kcal dziennie`;
}

// Przypisanie funkcji do formularza
const form = document.querySelector('form');
form.addEventListener('submit', function (event) {
  event.preventDefault();
  obliczBMR();
});
