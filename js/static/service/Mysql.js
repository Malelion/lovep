/**
 * Created by Melon on 2016/11/25.
 */
;define(function (require,exports,module) {
    module.exports = {
    <?php
        $con = mysql_connect("localhost","peter","abc123");
    if (!$con)
    {
        die('Could not connect: ' . mysql_error());
    }

// some code

    ?>
    };
});
