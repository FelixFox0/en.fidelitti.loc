<?php
/*
@author	Dmitriy Kubarev
@link	http://www.simpleopencart.com
@link	http://www.opencart.com/index.php?route=extension/extension/info&extension_id=4811
*/

include_once(DIR_SYSTEM . 'library/simple/simple_controller.php');

class ControllerCheckoutSimpleCheckoutText extends SimpleController {
    private $_templateData = array();

    public function index($args = null) {
        $this->loadLibrary('simple/simplecheckout');

        $this->simplecheckout = SimpleCheckout::getInstance($this->registry);

        $type = !empty($args['type']) ? $args['type'] : 'text';

        $this->load->model('catalog/information');

        $this->_templateData['text_id']      = !empty($args['id']) ? $args['id'] : (!empty($this->request->get['id']) ? $this->request->get['id'] : 0);
        $this->_templateData['text_title']   = '';
        $this->_templateData['text_content'] = '';
        $this->_templateData['text_type']    = $type;

        $this->_templateData['display_header'] = $this->simplecheckout->getSettingValue('displayHeader', $type);
        $this->_templateData['button_order']            = $this->language->get('button_order');

        $information = $this->model_catalog_information->getInformation($this->_templateData['text_id']);

        if ($information) {
            $this->_templateData['text_title'] = $information['title'];
            $this->_templateData['text_content'] = html_entity_decode($information['description'], ENT_QUOTES, 'UTF-8');
        }

        $this->setOutputContent($this->renderPage('checkout/simplecheckout_text', $this->_templateData));
    }
}


?>