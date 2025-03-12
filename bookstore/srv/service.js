    /**
    * Implementation for CatalogService defined in ./cat-service.cds
    **/
    const cds = require('@sap/cds')
    module.exports = function (){
      // Register your event handlers in here, e.g....
      this.after ('READ','Books', each => {
        if (each.stock > 80) {
          each.title += ` -- 11% discount!`
        }
      })
    }
