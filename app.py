class AENBiWebApp:
    """
    AENBiWebApp class represents the web application named AENBi for Accounting with point of sales.

    Methods:
    - run():
        This method starts the AENBi web application.

    - accounting():
        This method handles the accounting functionality of the AENBi web application.

    - point_of_sales():
        This method manages the point of sales functionality of the AENBi web application.
    """

    def run(self):
        """
        Starts the AENBi web application.
        """
        print("AENBi web application is running...")

    def accounting(self):
        """
        Handles the accounting functionality of the AENBi web application.
        """
        print("Accounting module is active.")

    def point_of_sales(self):
        """
        Manages the point of sales functionality of the AENBi web application.
        """
        print("Point of sales module is active.")

# Creating an instance of AENBiWebApp
aenbi_app = AENBiWebApp()

# Running the AENBi web application
aenbi_app.run()

# Accessing the accounting functionality
aenbi_app.accounting()

# Accessing the point of sales functionality
aenbi_app.point_of_sales()
