namespace learnhack\controllers;
use Facebook\HackRouter\UriPattern;
use type learnhack\controllers\AbstractWebController;
use type Facebook\HackRouter\SupportsGetRequests;
final class GreetingsController extends AbstractWebController implements SupportsGetRequests {
    const type IdSet = shape(LoginPageController::KEY1 => string);
    const string KEY1 = 'greeting';
    <<__Override>>
    public static function getUriPattern(): UriPattern {
        return (new UriPattern())->literal('/greetings/')->string('name');
    }

    <<__Override>>
    public function getResponse(): this::IdSet {
        $name = $this->getParameters()->getString('name');
        $greetings_text = 'Hello," world'.($name is nonnull ? $name : '');
        return shape(LoginPageController::KEY1 => $greetings_text);
    }
}
