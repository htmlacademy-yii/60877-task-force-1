<?php


use htmlacademy\models\Task;
use Htmlacademy\Models\ActionDeny;
use Htmlacademy\Models\ActionDone;
use Htmlacademy\Models\ActionExecute;
use Htmlacademy\Models\ActionCancel;
use Htmlacademy\Exceptions\CustomException;
use htmlacademy\Models\SqlCreation;
require_once "vendor/autoload.php";

$myTask = new Task(11111,22222);
echo $myTask->getStatus().'<br/>';
echo $myTask->getCustomer().'<br/>';
echo '<br/>';
$act = 'done';

try{
	$statusNext = $myTask->nextStatus($act);
} catch (CustomException $e){
	error_log("Cannot get next status: ".$e->getMessage());
}
if(isset($statusNext)){
	echo "Action - $act, next status: ".$statusNext.'<br/><br/>';
}

$act = 'gone';
try{
	$stNext = $myTask->nextStatus($act);
} catch (CustomException $e){
	error_log("Cannot get next status: ".$e->getMessage());
}
if(isset($stNext)){
	echo "Action - $act, next status: ".$stNext.'<br/><br/>';
}

try{
	$inprogCustomer = $myTask->getActions('in_progress', 1111,2222,1111);
} catch(CustomException $e){
	error_log("Cannot get next action: " . $e->getMessage());
}
if(isset($inprogCustomer)){
	echo 'Status - in_progress, user - customer: <br/>';
	echo $inprogCustomer->getInnerName().'<br/>';
	echo $inprogCustomer->getPublicName().'<br/>';
	echo '<br/>';
}

try{
	$inprogExec = $myTask->getActions('in_progres', 1111,2222,2222);
} catch(CustomException $e){
	error_log("Cannot get next action: " . $e->getMessage());
}
if(isset($inprogExec)){
	echo 'Status - in_progress, user - executer: <br/>';
	echo $inprogExec->getInnerName().'<br/>';
	echo $inprogExec->getPublicName().'<br/>';
	echo '<br/>';
}

try{
	$inprogOther = $myTask->getActions('in_progress', 1111,2222,3333);
} catch(CustomException $e){
	error_log("Cannot get next action: " . $e->getMessage());
}

if(!$inprogOther){
	echo 'Status - in_progress, user - other: <br/>';
	var_dump($inprogOther);
	echo "<br/>";
}

try{
	$newCustomer = $myTask->getActions('new', 1111,2222,1111);
} catch(CustomException $e){
	error_log("Cannot get next action: " . $e->getMessage());
}
if(isset($newCustomer)){
	echo '<br/>Status - new, user - customer: <br/>';
	echo $newCustomer->getInnerName().'<br/>';
	echo $newCustomer->getPublicName().'<br/>';
	echo '<br/>';
}

try{
	$new_executer = $myTask->getActions('new', 1111,2222,2222);
} catch(CustomException $e){
	error_log("Cannot get next action: " . $e->getMessage());
}
if(isset($new_executer)){
	echo 'Status - new, user - executer: <br/>';
	echo $new_executer->getInnerName().'<br/>';
	echo $new_executer->getPublicName().'<br/>';
	echo '<br/>';
}


/*Создаём файлы с инструкциями для заполнения таблиц база данных*/
$dir = "data/csv_files";
/*Обрабатываем один файл*/
$fileName = 'tasks.csv';
$fileConvert = new SqlCreation($dir,$fileName);

try {
	$answer = $fileConvert->getSqlfile();
} catch (CallNameException $e){
	error_log("File converted was not succsess: " . $e->getMessage());
}
if(isset($answer)){
	echo "Обработан одиночный файл <br/>";
	echo $answer."<br/>";
} else {
	echo "Возникла ошибка при конвертации файла. <br/>";
}

$iterator = new \FilesystemIterator($dir);

// Выполняем последовательно следующие операции с каждым найденным файлом формата .csv
while($iterator->valid()) {
    $file = $iterator->current();
    // Записываем имя файла
    $fileName = $file->getFilename();

    $fileConvert = new SqlCreation($dir,$fileName);
    try {
		$answer = $fileConvert->getSqlfile();
	} catch (CallNameException $e){
		error_log("File converted was not succsess: " . $e->getMessage());
	}
	if(isset($answer)){
		echo $answer;
	}

	$iterator->next();
}
