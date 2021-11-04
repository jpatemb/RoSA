function buy(name) {
    debugger;
    let table = document.querySelector("#cart tbody");
    let tableRow = table.insertRow();
    
    let productName = tableRow.insertCell(0);
    productName.innerHTML = name;

    let elementId = '#' + name.replace(' ', '');

    let price = tableRow.insertCell(1);
    price.innerHTML = document.querySelector(elementId + ' .price').innerHTML;

    let quantity = tableRow.insertCell(2);
    quantity.innerHTML = document.querySelector(elementId + ' input').value;

    let subTotal = tableRow.insertCell(3);
    subTotal.innerHTML = document.querySelector(elementId + ' input').value * document.querySelector(elementId + ' .price').innerHTML.replace('$', '');

    document.querySelector('#' + name.replace(' ', '') + ' input').value = '';
    document.querySelector('#empty').innerHTML = '';
}


function checkout()
{
    alert("Thank you for shopping at Embrey Enterprises! Have a wonderful day!");
    document.querySelectorAll("#cart tbody tr").forEach(row => row.remove());
    document.querySelector('#empty').innerHTML = 'No Items in cart';
}