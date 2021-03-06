<?php
/**
 * Zitec_Dpd – shipping carrier extension
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 *
 * @category   Zitec
 * @package    Zitec_Dpd
 * @authod     george.babarus
 * @copyright  Copyright (c) 2014 Zitec COM
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

class ControllerTotalDpdPayment extends Controller
{
    private $error = array();

    public function index()
    {
        $this->redirect($this->url->link('shipping/zitec_dpd/payment_settings', 'token=' . $this->session->data['token'], 'SSL'));
    }

    protected function validate()
    {
        return true;
    }
}

