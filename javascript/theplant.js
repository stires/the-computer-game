/*TheLittlePlant.js

 the little plant that hides in the corner..

build a feature for it! */


const plantNeedsWater = function(day, plantNeedsWater){
    if (day === 'Wednesday'){
        return true;
    } else {
        return false;
    }
}

plantNeedsWater('Tuesday') /* should log false to the console.
*/

console.log(plantNeedsWater('Tuesday')) //fixture to check if prints false.



/* sunlight is essential for plant growth.. right? lets add that.
*/

var light = Math.floor(Math.random() * 50)

const plantNeedsSunlight = function(light, plantNeedsSunlight){
    if (light < 20){
        return true;
        console.log('the plant is getting the required sunlight it needs.')
        console.log(`good job, ${username}!`) /* by default, username should be 'newUser' */
    } else {
        return false; 
        console.log('the plant is not getting enough sunlight as required..')
        console.log(`its not your fault, ${username}. sometimes the clouds just block the sun rays..`)
    }
}

plantNeedsSunlight(20)
console.log(`${username}, the amount of sunlight is just at it's efficiency. light value: ${light}
required sunlight level: ${plantNeedsSunlight}`)

/*photosynthesis?? what? */

var photosynthesis = Math.floor(Math.random() * 70) /* this is the value of nutrition the plant gets,
and also depends on how much it grows. */

var plantNutrition = function(light, water, day, plantNeedsSunlight, plantNeedsWater){
    if (photosynthesis > 35){
        console.log('Great! The plant is getting the required amount of nutrients.')
        console.log(`Nutrient count: ${photosynthesis}`)
        return true;
    } else {
        return false;
        console.log(`oh no, ${username}.. it appears as if the plant isn't getting it's recommended intake.. It's not your fault though.`)
        console.log('Keep your chin up! You will eventually have a fully grown and well taken-care-of plant. :) ')
    }
}

if (photosynthesis > 35){
    console.log('Great! The plant is getting the required amount of nutrients.')
    console.log(`Nutrient count: ${photosynthesis}`)
    return true; 
} else {
    console.log('oh, wonderful! your plant is growing as it should!')
    console.log('darn nab it. the plant is not getting its recommended daily intake.. not your fault though.')
    return false;
}

let plantNutrion = photosynthesis

console.log(`plant nutrion values: light = ${photosynthesis}, day = ${day}, sunlight requirement = ${plantNeedsSunlight}, & water requirement = ${plantNeedsWater}.`)

plantNutrion(20, 10, false, true);

console.log(plantNutrion(20, 10, false, true)); /* so we got the nutritional, water, & light values done.. what next? */

/*oh yeah the health of the soil!
that'll be the very last thing i'll do for the plant growth feature. */

var soilHealthLevel = Math.floor(Math.random() * 70)

const soilHealth = function(water, light, photosynthesis){
    if (water, light, photosynthesis > soilHealthLevel){
        console.log('The soil is rather healthy. That is very good!')
    } else {
        console.log('oh darn, the soil is not looking good...')
    }
}

soilHealth()
console.log(soilHealth(water, light, photosynthesis))
//easy fortnite dubs




//thats epic!
//wow 100 lines? cool
//ha ha funny
