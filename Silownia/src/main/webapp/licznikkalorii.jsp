<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Licznik kalorii</title>
	<link rel="shortcut icon" href="gym.ico" type="image/x-icon">
	<link rel="stylesheet" href="licznikkalorii.css">
</head>
<body>
	<nav> 
		<ul>
			<li><a href="main.jsp"><b>Strona główna</b></a></li>
			<li><a href="wyborkalkulatora.jsp"><b>Kalkulator BMI i BMR</b></a></li>
			<li><a href="tetno.jsp"><b>Kalkulator tętna</b></a></li>
			<li><a href="licznikkalorii.jsp"><b>Licznik kalorii</b></a></li>
			<li><a href="AtlasCwiczen.jsp"><b>Atlas ćwiczeń</b></a></li>
			<li><a href="kontakt.jsp"><b>Kontakt</b></a></li>
			<li><a href="uzytkownik.jsp"><%=session.getAttribute("nazwa-log") %></a></li>
			<li><a href="logout"><b>Wyloguj</b></a></li>
		</ul>
	</nav>
	<div class="container">
		<h1>Licznik kalorii</h1>
		<h4>Skorzystaj z dostępnej bazy produktów i oblicz ilość spożytych kalorii</h4>

		<label>Wybierz produkt:</label>
		<select id="product-list">
			<option value="" disabled selected>Wybierz produkt</option>
			<% 
			try {
				// Połączenie z bazą danych
				String url = "jdbc:mysql://localhost:3306/licznik";
				String user = "root";
				String password = "P@ssw0rd";
				Connection conn = DriverManager.getConnection(url, user, password);

				// Zapytanie SQL
				String sql = "SELECT * FROM jedzenie";
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();

				// Wyświetlanie wyników zapytania
				while (rs.next()) {
					String produkt = rs.getString("produkty");
					String kalorie = rs.getString("kalorie");
					String bialko = rs.getString("bialko");
					String tluszcz = rs.getString("tluszcz");
					String weglowodany = rs.getString("weglowodany");
			%>
			<option value="<%= produkt %>" data-kalorie="<%= kalorie %>" data-bialko="<%= bialko %>" data-tluszcz="<%= tluszcz %>" data-weglowodany="<%= weglowodany %>"><%= produkt %></option>
			<% 
				}
				// Zamykanie połączenia z bazą danych
				rs.close();
				ps.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			%>
		</select>

		<label>Ilość (w gramach):</label>
		<input type="number" id="quantity-input" min="1" value="100">

		<button id="add-button">Dodaj produkt</button>

		<h2>Wybrane produkty:</h2>
		<ul id="selected-products-list"></ul>

		<h2>Łącznie:</h2>
		<ul>
			<li>Kalorie: <span id="calories-sum">0</span></li>
			<li>Białko: <span id="protein-sum">0</span> g</li>
			<li>Tłuszcz: <span id="fat-sum">0</span> g</li>
			<li>Węglowodany: <span id="carbs-sum">0</span> g</li>
		</ul>
		<button id="reset-button">Wyzeruj</button>
	</div>
	<br>
	<h1>Lista wszystkich dostępnych produktów</h1>
	<h3>Na 100g produktu</h3>
	<table>
		<tr>
			<th>Lp.</th>
			<th>Produkt</th>
			<th>Kalorie</th>
			<th>Białko</th>
			<th>Tłuszcz</th>
			<th>Węglowodany</th>
		</tr>
		<% 
		try {
			// Połączenie z bazą danych
			String url = "jdbc:mysql://localhost:3306/licznik";
			String user = "root";
			String password = "P@ssw0rd";
			Connection conn = DriverManager.getConnection(url, user, password);

			// Zapytanie SQL
			String sql = "SELECT * FROM jedzenie";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			// Wyświetlanie wyników zapytania
			int i = 0;
			while (rs.next()) {
				i++;
				String produkty = rs.getString("produkty");
				String kalorie = rs.getString("kalorie");
				String bialko = rs.getString("bialko");
				String tluszcz = rs.getString("tluszcz");
				String weglowodany = rs.getString("weglowodany");
		%>
		<tr>
			<td><%= i %></td>
			<td><%= produkty %></td>
			<td><%= kalorie %></td>
			<td><%= bialko %></td>
			<td><%= tluszcz %></td>
			<td><%= weglowodany %></td>
		</tr>
		<% 
			}
			// Zamykanie połączenia z bazą danych
			rs.close();
			ps.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		%>
	</table>

<script>
	var selectedProducts = [];

	function addProductToList() {
		var productList = document.getElementById("product-list");
		var selectedOption = productList.options[productList.selectedIndex];

		if (!selectedOption.value) {
			alert("Wybierz produkt.");
			return;
		}

		var quantityInput = document.getElementById("quantity-input");
		var grams = parseInt(quantityInput.value);
		if (isNaN(grams) || grams <= 0) {
			alert("Podaj prawidłową ilość (większą od zera).");
			return;
		}

		var selectedProductsList = document.getElementById("selected-products-list");

		var product = {
			name: selectedOption.value,
			kalorie: parseInt(selectedOption.getAttribute("data-kalorie")),
			bialko: parseInt(selectedOption.getAttribute("data-bialko")),
			tluszcz: parseInt(selectedOption.getAttribute("data-tluszcz")),
			weglowodany: parseInt(selectedOption.getAttribute("data-weglowodany")),
			grams: grams
		};

		selectedProducts.push(product);

		var productContainer = document.createElement("div");
		productContainer.className = "product-container";

		var productName = document.createElement("span");
		productName.textContent = product.name + " (" + product.grams + " g) - ";
		productContainer.appendChild(productName);

		var productDetails = document.createElement("span");
		productDetails.textContent = "Kalorie: " + product.kalorie + ", Białko: " + product.bialko + ", Tłuszcz: " + product.tluszcz + ", Węglowodany: " + product.weglowodany;
		productContainer.appendChild(productDetails);

		var deleteButton = document.createElement("button");
		deleteButton.textContent = "X";
		deleteButton.className = "delete-button";
		deleteButton.addEventListener("click", function () {
			removeProduct(product);
		});
		productContainer.appendChild(deleteButton);

		selectedProductsList.appendChild(productContainer);

		calculateTotal();

		quantityInput.value = "";
		productList.selectedIndex = 0;
	}

	function removeProduct(product) {
		var index = selectedProducts.indexOf(product);
		if (index !== -1) {
			selectedProducts.splice(index, 1);
			var productContainers = document.getElementsByClassName("product-container");
			var productContainer = productContainers[index];
			productContainer.remove();
			calculateTotal();
		}
	}

	function calculateTotal() {
		var caloriesSum = 0;
		var proteinSum = 0;
		var fatSum = 0;
		var carbsSum = 0;

		selectedProducts.forEach(function (product) {
			caloriesSum += (product.grams / 100) * product.kalorie;
			proteinSum += (product.grams / 100) * product.bialko;
			fatSum += (product.grams / 100) * product.tluszcz;
			carbsSum += (product.grams / 100) * product.weglowodany;
		});

		var caloriesSumSpan = document.getElementById("calories-sum");
		var proteinSumSpan = document.getElementById("protein-sum");
		var fatSumSpan = document.getElementById("fat-sum");
		var carbsSumSpan = document.getElementById("carbs-sum");

		caloriesSumSpan.innerText = caloriesSum.toFixed(2);
		proteinSumSpan.innerText = proteinSum.toFixed(2);
		fatSumSpan.innerText = fatSum.toFixed(2);
		carbsSumSpan.innerText = carbsSum.toFixed(2);
	}

	document.getElementById("add-button").addEventListener("click", addProductToList);

	document.getElementById("reset-button").addEventListener("click", function () {
		selectedProducts = [];

		var selectedProductsList = document.getElementById("selected-products-list");
		while (selectedProductsList.firstChild) {
			selectedProductsList.removeChild(selectedProductsList.firstChild);
		}

		calculateTotal();
	});

</script>


</body>
</html>
