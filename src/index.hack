namespace akhapre\learnhack;
use framework\globals\GlobalValues;
use namespace HH\Lib\{File, IO, Math};
use type Facebook\Experimental\Http\Message\{
    ResponseInterface,
    ServerRequestInterface,
};
use C\count;

<<__EntryPoint>>
async function main_async(): Awaitable<void> {
    require_once(__DIR__.'./../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    /*
    $result = \square_vec(vec[1,2,3,4]);

    foreach($result as $r) {
        echo $r."\n";
    }
    \first_main();
    */

    $request = \Usox\HackTTP\create_server_request_from_globals();
    $server = GlobalValues\server_variables();

    $dummy_uri = 'http://'.$server['HTTP_HOST'].'/';
    $host = \parse_url($dummy_uri, \PHP_URL_HOST);
    $port = \parse_url($dummy_uri, \PHP_URL_PORT);
    $request = $request->withUri(
        $request->getUri()
            ->withHost($host)
            ->withPort($port)
            ->withScheme('http'),
    );

    $buffer_path = \sys_get_temp_dir().'/'.\bin2hex(\random_bytes(16));
    $write_handle = File\open_write_only(
        $buffer_path,
        File\WriteMode::MUST_CREATE,
    );

    $response = (new \Usox\HackTTP\Response($write_handle));

    try {
        list($controller_class_name, $immu_map) = (new \Router())->routeRequest($request);
        $raw_response = (new $controller_class_name($immu_map, $request))->getResponse();
        await $response->getBody()
            ->writeAllAsync(
                \json_encode($raw_response)
            );

        $response = $response
            ->withStatus(200)
            ->withHeader(
                'Content-type',
                vec['text/html', 'charset=utf-8'],
            );
        $headers = null;
        if ($headers != null) {
            foreach ($headers as $key => $values) {
                $response = $response->withAddedHeader($key, $values);
            }
        }
    } catch (\Exception $ex) {

    }
    \http_response_code($response->getStatusCode());

    foreach ($response->getHeaders() as $key => $values) {
        foreach ($values as $value) {
            \header($key.': '.$value, /* replace = */ false);
        }
    }
    $write_handle->close();

    $read_handle = File\open_read_only($buffer_path);
    using ($read_handle->closeWhenDisposed()) {
        $out = IO\request_output();
        $content = await $read_handle->readAllAsync(Math\INT64_MAX);
        await $out->writeAllAsync($content);
    }
    \unlink($buffer_path);

}
