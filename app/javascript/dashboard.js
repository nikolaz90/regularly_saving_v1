//assigning html elements on dashboard/index to variables 
document.addEventListener("turbo:load", async (e)=>{
    const years = document.getElementById('dashboard-overview-years')
    years.innerText = "retrieving data"

    const total = document.getElementById('dashboard-overview-total')
    total.innerText = "retrieving data"

    const target = document.getElementById('dashboard-overview-target')
    target.innerText = "retrieving data"

    const percentage = document.getElementById('dashboard-overview-percentage')
    percentage.innerText = "retrieving data"

    //function to retrieve data from json endpoint and assign to dashboard elements

    let getYears = async function (){
        let data = []
        try {
            await fetch('http://localhost:3000/years.json')
                .then(response => response.json())
                .then(years =>{
                    return data = years
                })
            } catch (error) {
                console.log(error);
        }    
        years.innerText = data.length
        total.innerText = data.reduce((acc, curr) => acc + curr.total, 0)
        target.innerText = data.reduce((acc, curr) => acc + (curr.monthly_target*12), 0)
        percentage.innerText = Number((total.innerText/target.innerText)*100).toFixed(2)
        console.log('fetched');
        return data
    }
    getYears()





        // e.preventDefault()
        // //e.preventDefault()
        // await getYears()
        // // years.innerText = "awaiting info"
        // // let temp = ''
        // // getYears().then(response => {
        // //     temp = response.length
        // // }).then(res => {
        // //     years.innerText = temp
        // // })
        // e.detail.resume()
        // //e.detail.resume()
        // console.log('evvent');



    console.log(getYears());

    console.log('dashy');

})