    /**
    * Implementation for bookshopService defined in ./service.cds
    */
    const cds = require('@sap/cds')
    module.exports = function (){
      // Register your event handlers in here, e.g....
      this.after ('READ','Books', each => {
        if (each.stock > 50) {
          each.title += ` -- 11% discount!`
        }
      })
    }

