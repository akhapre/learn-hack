namespace Usox\HackHttpFactory;

use namespace Facebook\Experimental\Http\Message;

interface ResponseFactoryInterface {
	/**
	 * Create a new response.
	 *
	 * @param int $code HTTP status code; defaults to 200
	 * @param string $reason_phrase Reason phrase to associate with status code
	 *     in generated response; if none is provided implementations MAY use
	 *     the defaults as suggested in the HTTP specification.
	 *
	 * @return Message\ResponseInterface
	 */
	public function createResponse(
		int $code = 200,
		string $reason_phrase = '',
	): Message\ResponseInterface;
}
