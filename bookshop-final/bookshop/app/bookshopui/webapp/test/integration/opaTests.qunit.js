sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/bookshopui/test/integration/FirstJourney',
		'com/sap/bookshopui/test/integration/pages/BooksList',
		'com/sap/bookshopui/test/integration/pages/BooksObjectPage'
    ],
    function(JourneyRunner, opaJourney, BooksList, BooksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/bookshopui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheBooksList: BooksList,
					onTheBooksObjectPage: BooksObjectPage
                }
            },
            opaJourney.run
        );
    }
);