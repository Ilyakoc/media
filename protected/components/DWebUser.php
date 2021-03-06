<?php

use common\components\helpers\HEvent;

/**
 * DWebUser
 *
 * @event onAfterInitWebUser(['webUser'=>&$this])
 * событие вызывается в конце инициализации DWebUser::init()
 */
class DWebUser extends \CWebUser
{
    /**
     * {@inheritDoc}
     * @see \CWebUser::init()
     */
    public function init()
    {
        parent::init();

        HEvent::raise('onAfterInitWebUser', ['webUser' => &$this]);
    }

    /**
     * {@inheritDoc}
     * @see \CWebUser::checkAccess()
     */
    public function checkAccess($operation, $params = [], $allowCaching = true)
    {
        $this->checkTestPeriodEnded();
        return (!isset($this->role) || ($this->role === $operation));
    }

    public function checkTestPeriodEnded()
    {
        $test_ended = $this->getState('test_ended');
        if ($test_ended !== null && $test_ended < time()) $this->logout(false);
    }
}
