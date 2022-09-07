async function getData(){
    let data = []
    try {
        let fetchData = await fetch('http://localhost:3000/years.json')
        .then(response => response.json())
        .then(data => console.log(data))
        data = fetchData
    } catch (error) {
        console.log(error);
    }
    return data
}

let myData = getData()
console.log(myData);