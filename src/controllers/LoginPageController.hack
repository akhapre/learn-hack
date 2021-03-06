namespace learnhack\controllers;
use Facebook\HackRouter\UriPattern;
use type learnhack\controllers\AbstractWebController;
use type Facebook\HackRouter\SupportsGetRequests;
final class LoginPageController extends AbstractWebController implements SupportsGetRequests {
    const type IdSet = shape(LoginPageController::KEY1 => string);
    const string KEY1 = 'greeting';
    <<__Override>>
    public static function getUriPattern(): UriPattern {
        return (new UriPattern())->literal('/login');
    }

    <<__Override>>
    public function getResponse(): this::IdSet {
        return shape(LoginPageController::KEY1 => 'Hello," world');
    }
}
