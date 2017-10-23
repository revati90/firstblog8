<?php

/**
 * @file
 * Enables modules and site configuration for a firstblog site installation.
 */

/**
 * Implements hook_install_tasks().
 */
 function firstblog_install_tasks(&$install_state) {
  $tasks = array();
  $tasks['firstblog_default_users'] = array();
  return $tasks;
 }

 /**
 * Implements function user_roles().
 */
function firstblog_default_users() {
  // $roles = user_roles();
  // $admin_user = variable_get('user_admin_role');
  // unset($roles[$admin_user]);
  // unset($roles[DRUPAL_ANONYMOUS_RID]);
  // unset($roles[DRUPAL_AUTHENTICATED_RID]);
  $user = \Drupal\user\Entity\User::create();
  $user -> setPassword('blogger');
  $user -> enforceIsNew();
  $user -> setEmail('blogger@gmail.com');
  $user -> setUsername('blogger');
  $user -> addRole('blogger');
  $user -> set('status',1);
  $res = $user->save();
 }
