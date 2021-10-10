namespace Usox\HackHttpFactory;

use namespace Facebook\Experimental\Http\Message;

interface RequestFactoryInterface {
	/**
	 * Create a new request.
	 *
	 * @param Message\HTTPMethod $method The HTTP method associated with the request.
	 * @param Message\UriInterface $uri The URI associated with the request
	 *
	 * @return Message\RequestInterface
	 */
	public function createRequest(
		Message\HTTPMethod $method,
		Message\UriInterface $uri,
	): Message\RequestInterface;
}
