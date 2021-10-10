namespace learnhack\controllers;
use type Facebook\HackRouter\IncludeInUriMap; 
use type Facebook\HackRouter\{RequestParameter, RequestParameters};
use type Facebook\Experimental\Http\Message\{
    ResponseInterface,
    ServerRequestInterface,
};
use type Facebook\HackRouter\UriPattern;

<<__ConsistentConstruct>>
abstract class AbstractWebController implements IncludeInUriMap{
    private RequestParameters $parameters;
    public function __construct(
        ImmMap<string, string> $parameters,
        private ServerRequestInterface $request,
    ) {
        $this->parameters = new RequestParameters(
            static::getUriPattern()->getParameters(),
            ImmVector {},
            $parameters);
    }

    public static function getUriPattern(): UriPattern {
        return (new UriPattern())->literal('/hello');
    }

    public function getResponse(): string {
        return 'Hello, world';
    }

}