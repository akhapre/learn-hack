namespace Usox\HackHttpFactory;

use namespace Facebook\Experimental\Http\Message;

interface ServerRequestFactoryInterface {
  /**
   * Create a new server request.
   *
   * Note that server-params are taken precisely as given - no parsing/processing
   * of the given values is performed, and, in particular, no attempt is made to
   * determine the HTTP method or URI, which must be provided explicitly.
   *
   * @param Message\HTTPMethod $method The HTTP method associated with the request.
   * @param Message\UriInterface $uri The URI associated with the request
   * @param dict<string, string> $server_params Array of SAPI parameters with which to seed
   *     the generated request instance.
   *
   * @return ServerRequestInterface
   */
  public function createServerRequest(
    Message\HTTPMethod $method,
    Message\UriInterface $uri,
    dict<string, string> $server_params = dict[],
  ): Message\ServerRequestInterface;
}
