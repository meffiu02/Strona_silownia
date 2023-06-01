const productData = {
    "jajko": {
        calories: 155,
        protein: 13,
        fat: 11,
        carbs: 1.1
    },
    "mleko": {
        calories: 42,
        protein: 3.3,
        fat: 1.0,
        carbs: 4.8
    },
    "kurczak": {
        calories: 98,
        protein: 21.5,
        fat: 3.6,
        carbs: 0
    },
    "ryz": {
        calories: 130,
        protein: 2.7,
        fat: 0.3,
        carbs: 28
    }
};

const productList = document.getElementById("product-list");
const quantityInput = document.getElementById("quantity-input");
const addButton = document.getElementById("add-button");
const resetButton = document.getElementById("reset-button");
const caloriesOutput = document.getElementById("calories");
const proteinOutput = document.getElementById("protein");
const fatOutput = document.getElementById("fat");
const carbsOutput = document.getElementById("carbs");
const caloriesSumOutput = document.getElementById("calories-sum");
const proteinSumOutput = document.getElementById("protein-sum");
const fatSumOutput = document.getElementById("fat-sum");
const carbsSumOutput = document.getElementById("carbs-sum");
let caloriesSum = 0;
let proteinSum = 0;
let fatSum = 0;
let carbsSum = 0;

addButton.addEventListener("click", () => {
    const product = productList.value;
    const quantity = Number(quantityInput.value);

    if (product && quantity > 0) {
        const productInfo = productData[product];
        const calories = productInfo.calories * quantity / 100;
        const protein = productInfo.protein * quantity / 100;
        const fat = productInfo.fat * quantity / 100;
        const carbs = productInfo.carbs * quantity / 100;

        caloriesOutput.textContent = calories.toFixed(1);
        proteinOutput.textContent = protein.toFixed(1);
        fatOutput.textContent = fat.toFixed(1);
        carbsOutput.textContent = carbs.toFixed(1);

        caloriesSum += calories;
        proteinSum += protein;
        fatSum += fat;
        carbsSum += carbs;

        caloriesSumOutput.textContent = caloriesSum.toFixed(1);
        proteinSumOutput.textContent = proteinSum.toFixed(1);
        fatSumOutput.textContent = fatSum.toFixed(1);
        carbsSumOutput.textContent = carbsSum.toFixed(1);
    } else {
        if (!product) {
            alert("Wybierz produkt");
        }
        else if(!quantity){
			alert("Należy wypełnić puste pole");
		}
        else if (quantity <= 0) {
            alert("Wprowadź prawidłową wartość większą od zera.");
        }
       
    }
});

resetButton.addEventListener("click", () => {
    caloriesSum = 0;
    proteinSum = 0;
    fatSum = 0;
    carbsSum = 0;

    caloriesSumOutput.textContent = "0";
    proteinSumOutput.textContent = "0";
    fatSumOutput.textContent = "0";
    carbsSumOutput.textContent = "0";

    // Zresetuj także wyjście wartości dla ostatnio dodanego produktu
    caloriesOutput.textContent = "0";
    proteinOutput.textContent = "0";
    fatOutput.textContent = "0";
    carbsOutput.textContent = "0";

    // Zresetuj wybór produktu i wartość ilości
    productList.selectedIndex = 0;
    quantityInput.value = "100";
});
