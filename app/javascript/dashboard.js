//assigning html elements on dashboard/index to variables 
document.addEventListener("turbo:load", ()=>{
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




    //box shadow effect
    const adminContainer = document.getElementById("dashboard-admin-commands-id")
    const overviewContainer = document.getElementById("dashboard-overview-container-id")
    let pixelCount = 4
    let scrollAmount = 0

    document.addEventListener('scroll', ()=>{
        if(scrollAmount < window.pageYOffset && pixelCount<= 10){
            pixelCount +=1
        }else if(scrollAmount > window.pageYOffset && pixelCount>=4){
            pixelCount -=1
        }
        adminContainer.style.boxShadow = `${pixelCount}px ${pixelCount}px 0px black`
        adminContainer.style.background = `linear-gradient(-${pixelCount}0deg,#f1b3a0,#ff9cc2,#aae8ff,#acf8e6)`
        overviewContainer.style.boxShadow = `${pixelCount}px ${pixelCount}px 0px black`
        overviewContainer.style.background = `linear-gradient(-${pixelCount}0deg,#f2d3ca,#f3cbd9,#e4e9c9,#f2e8d1)`
        scrollAmount = window.pageYOffset
    })   

    console.log(getYears());

    console.log('dashy');

})


