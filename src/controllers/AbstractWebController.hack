namespace learnhack\controllers;
use type Facebook\HackRouter\{IncludeInUriMap, RequestParameters, UriPattern};
use type Facebook\Experimental\Http\Message\{
    ServerRequestInterface,
};

<<__ConsistentConstruct>>
abstract class AbstractWebController implements IncludeInUriMap{
    abstract const type IdSet = shape("A"=>string);
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

    public function getParameters() : RequestParameters {
        return $this->parameters;
    }
    public abstract function getResponse(): this::IdSet;

}
