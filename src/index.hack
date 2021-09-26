namespace akhapre\learnhack;

<<__EntryPoint>>
async function main_async(): Awaitable<void> {
    require_once(__DIR__.'./../vendor/autoload.hack');
    \Facebook\AutoloadMap\initialize();

    //$_request = \Usox\HackTTP\create_server_request_from_globals();
    $result = \square_vec(vec[1,2,3,4]);

    foreach($result as $r) {
        echo $r."\n";
    }
    \first_main();

}
