namespace Usox\HackHttpFactory;

use namespace Facebook\Experimental\Http\Message;

interface UriFactoryInterface {
	/**
	 * Create a new URI.
	 *
	 * @param ?string $uri
	 *
	 * @return Message\UriInterface
	 *
	 * @throws \InvalidArgumentException If the given URI cannot be parsed.
	 */
	public function createUri(?string $uri = null): Message\UriInterface;
}
