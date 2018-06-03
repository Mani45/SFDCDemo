@RestResource(urlMapping='/Widgets/*')
global class WidgetController {

    @HttpGet
    global static List<Account> getWidgets() {
        List<Account> widgets = [SELECT Name from Account];
        System.debug('accs-->'+widgets);
        return widgets;
    }
    
    }