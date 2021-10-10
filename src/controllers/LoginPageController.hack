use \learnhack\controllers\AbstractWebController;
use \Facebook\HackRouter\UriPattern;
use type Facebook\HackRouter\SupportsGetRequests;
use HackFacebook\UiServer\Controllers\IRoutableGetController;
final class LoginPageController extends AbstractWebController implements SupportsGetRequests {
    <<__Override>>
    public static function getUriPattern(): UriPattern {
        return (new UriPattern())->literal('/login');
    }  

    <<__Override>>
    public function getResponse(): string {
        return 'Hello, world';
    }

}
