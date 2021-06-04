<?php

namespace htmlacademy;

class AbstractClass
{
    abstract protected function actionExecute();
    abstract protected function statusDone();
    abstract protected function statusCancel();
    abstract protected function statusDeny();

class AbstractHeirs extends AbstractClass
{
    protected function actionExecute() {
    }

    public function actionDone() {
    }
    public function actionCancel() {
    }
    public function actionDeny() {
    }
}
