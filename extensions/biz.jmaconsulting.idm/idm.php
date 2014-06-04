<?php

require_once 'idm.civix.php';

/**
 * Implementation of hook_civicrm_config
 */
function idm_civicrm_config(&$config) {
  _idm_civix_civicrm_config($config);
}

/**
 * Implementation of hook_civicrm_xmlMenu
 *
 * @param $files array(string)
 */
function idm_civicrm_xmlMenu(&$files) {
  _idm_civix_civicrm_xmlMenu($files);
}

/**
 * Implementation of hook_civicrm_install
 */
function idm_civicrm_install() {
  _idm_civix_civicrm_install();
  $smarty = CRM_Core_Smarty::singleton();
  $config = CRM_Core_Config::singleton();
  $data = $smarty->fetch($config->extensionsDir . DIRECTORY_SEPARATOR . 'biz.jmaconsulting.idm/sql/civicrm_msg_template.tpl');
  file_put_contents($config->uploadDir . "civicrm_data.sql", $data);
  CRM_Utils_File::sourceSQLFile(CIVICRM_DSN, $config->uploadDir . "civicrm_data.sql");
  return TRUE;
}

/**
 * Implementation of hook_civicrm_uninstall
 */
function idm_civicrm_uninstall() {
  return _idm_civix_civicrm_uninstall();
}

/**
 * Implementation of hook_civicrm_enable
 */
function idm_civicrm_enable() {
  return _idm_civix_civicrm_enable();
}

/**
 * Implementation of hook_civicrm_disable
 */
function idm_civicrm_disable() {
  return _idm_civix_civicrm_disable();
}

/**
 * Implementation of hook_civicrm_upgrade
 *
 * @param $op string, the type of operation being performed; 'check' or 'enqueue'
 * @param $queue CRM_Queue_Queue, (for 'enqueue') the modifiable list of pending up upgrade tasks
 *
 * @return mixed  based on op. for 'check', returns array(boolean) (TRUE if upgrades are pending)
 *                for 'enqueue', returns void
 */
function idm_civicrm_upgrade($op, CRM_Queue_Queue $queue = NULL) {
  return _idm_civix_civicrm_upgrade($op, $queue);
}

/**
 * Implementation of hook_civicrm_managed
 *
 * Generate a list of entities to create/deactivate/delete when this module
 * is installed, disabled, uninstalled.
 */
function idm_civicrm_managed(&$entities) {
  return _idm_civix_civicrm_managed($entities);
}


function idm_civicrm_links( $op, $objectName, $objectId, &$links ) {
  if ($objectName == 'Contact' && $op == 'view.contact.userDashBoard') {
    $links[0] = array(
      'name' => 'View',
      'url' => 'civicrm/contact/view',
      'qs' => 'action=view&reset=1&cid=%%cbid%%',
      'title' => 'View this contact',
    );
    $links[1] = array(
      'name' => 'Edit',
      'url' => 'civicrm/profile/edit',
      'qs' => 'gid=13&reset=1&id=%%cbid%%',
      'title' => 'Edit this contact',
    );
  }
}

function idm_civicrm_pageRun( &$page ) {
  if ($page->getVar('_gid') == 13 || $page->getVar('_gid') == 14) {
    $smarty = CRM_Core_Smarty::singleton();
    $smarty->assign('listingURL', CRM_Utils_System::url('mode-directory'));
  }
}