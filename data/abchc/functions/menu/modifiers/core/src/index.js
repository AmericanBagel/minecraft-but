const fs = require('fs');

const modifiers = require('./modifiers.json');

/*
for (let i = 0; i < modifiers.length; i++) {
    /*
    try {
        fs.mkdirSync(`../${modifiers[i]}`)
        //file written successfully
      } catch (err) {
        console.error(err)
      }
      */
    /*
    try {
        // Create folder
        fs.mkdirSync(`../${modifiers[i]}`)

        // Create "on" function
        fs.writeFileSync(`../${modifiers[i]}/on.mcfunction`,`#> abchc:menu/modifiers/core/${modifiers[i]}/on\n#Automatically generated toggle on function for ${modifiers[i]}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifiers[i]} abch.toggle 1\n\n# Run load function\nfunction abchc:modifiers/${modifiers[i]}/load\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/modifiers/directory`)

        // Create "off" function
        fs.writeFileSync(`../${modifiers[i]}/off.mcfunction`, `#> abchc:menu/modifiers/core/${modifiers[i]}/off\n#Automatically generated toggle off function for ${modifiers[i]}\n# @within abchc:menu/**\n# @context player\n\n# Toggle\nscoreboard players set ${modifiers[i]} abch.toggle 0\n\n# Run unload function\nfunction abchc:modifiers/${modifiers[i]}/unload\n\n# Click sound\nfunction abchc:menu/actions/click\n\n# Update menu\nfunction abchc:menu/modifiers/directory`)

        // Config folder
        fs.writeFileSync(`../${modifiers[i]}/config.mcfunction`, `#> abchc:menu/modifiers/core/2020_mode/config\n# Config menu for ${modifiers[i]} with help from\n# the script in ../src\n# @within abchc:menu/**\n# @context player\n\n`)

        //file written successfully
      } catch (err) {
        console.error(err)
      }
}
*/

// Convert modifiers object to array
const entries = Object.entries(modifiers)

// For each modifier
entries.forEach(element => {
  // Set constants
  const modifier = element[0];
  const entries = Object.entries(element[1]);

  // Create folder for modifier
  //fs.mkdirSync('../${modifier}')

  // Create config page


  // For each config
  entries.forEach(element => {
    // Set constants
    const id = element[0];
    const config = element[1];

    // Switch based on types
    switch (config.type) {
      case 'number':
          console.log('Number!');
        break;
    
      default:
        break;
    }
  })

  /*
  element.forEach(element => {
    console.log(element)
  })
  */
});