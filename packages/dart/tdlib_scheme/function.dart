  // class TdlibFunction {
  //       late Map rawData;
  //       TdlibFunction(this.rawData);
  
  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAuthorizationState.html).
  //   factory TdlibFunction.getAuthorizationState()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAuthorizationState",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAuthorizationState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setTdlibParameters.html).
  //   factory TdlibFunction.setTdlibParameters({
  //     bool? use_test_dc,
  //     String? database_directory,
  //     String? files_directory,
  //     String? database_encryption_key,
  //     bool? use_file_database,
  //     bool? use_chat_info_database,
  //     bool? use_message_database,
  //     bool? use_secret_chats,
  //     int? api_id,
  //     String? api_hash,
  //     String? system_language_code,
  //     String? device_model,
  //     String? system_version,
  //     String? application_version,
  //     bool? enable_storage_optimizer,
  //     bool? ignore_file_names,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setTdlibParameters",
  //         "use_test_dc": use_test_dc,
  //         "database_directory": database_directory,
  //         "files_directory": files_directory,
  //         "database_encryption_key": database_encryption_key,
  //         "use_file_database": use_file_database,
  //         "use_chat_info_database": use_chat_info_database,
  //         "use_message_database": use_message_database,
  //         "use_secret_chats": use_secret_chats,
  //         "api_id": api_id,
  //         "api_hash": api_hash,
  //         "system_language_code": system_language_code,
  //         "device_model": device_model,
  //         "system_version": system_version,
  //         "application_version": application_version,
  //         "enable_storage_optimizer": enable_storage_optimizer,
  //         "ignore_file_names": ignore_file_names,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setTdlibParameters",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setAuthenticationPhoneNumber.html).
  //   factory TdlibFunction.setAuthenticationPhoneNumber({
  //     String? phone_number,
  //     PhoneNumberAuthenticationSettings? settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setAuthenticationPhoneNumber",
  //         "phone_number": phone_number,
  //         "settings": (settings != null)?settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setAuthenticationPhoneNumber",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setAuthenticationEmailAddress.html).
  //   factory TdlibFunction.setAuthenticationEmailAddress({
  //     String? email_address,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setAuthenticationEmailAddress",
  //         "email_address": email_address,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setAuthenticationEmailAddress",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendAuthenticationCode.html).
  //   factory TdlibFunction.resendAuthenticationCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendAuthenticationCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendAuthenticationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkAuthenticationEmailCode.html).
  //   factory TdlibFunction.checkAuthenticationEmailCode({
  //     EmailAddressAuthentication? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkAuthenticationEmailCode",
  //         "code": (code != null)?code.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkAuthenticationEmailCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkAuthenticationCode.html).
  //   factory TdlibFunction.checkAuthenticationCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkAuthenticationCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkAuthenticationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1requestQrCodeAuthentication.html).
  //   factory TdlibFunction.requestQrCodeAuthentication({
  //     List<int>? other_user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "requestQrCodeAuthentication",
  //         "other_user_ids": other_user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method requestQrCodeAuthentication",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1registerUser.html).
  //   factory TdlibFunction.registerUser({
  //     String? first_name,
  //     String? last_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "registerUser",
  //         "first_name": first_name,
  //         "last_name": last_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method registerUser",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkAuthenticationPassword.html).
  //   factory TdlibFunction.checkAuthenticationPassword({
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkAuthenticationPassword",
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkAuthenticationPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1requestAuthenticationPasswordRecovery.html).
  //   factory TdlibFunction.requestAuthenticationPasswordRecovery()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "requestAuthenticationPasswordRecovery",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method requestAuthenticationPasswordRecovery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkAuthenticationPasswordRecoveryCode.html).
  //   factory TdlibFunction.checkAuthenticationPasswordRecoveryCode({
  //     String? recovery_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkAuthenticationPasswordRecoveryCode",
  //         "recovery_code": recovery_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkAuthenticationPasswordRecoveryCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recoverAuthenticationPassword.html).
  //   factory TdlibFunction.recoverAuthenticationPassword({
  //     String? recovery_code,
  //     String? new_password,
  //     String? new_hint,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "recoverAuthenticationPassword",
  //         "recovery_code": recovery_code,
  //         "new_password": new_password,
  //         "new_hint": new_hint,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method recoverAuthenticationPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkAuthenticationBotToken.html).
  //   factory TdlibFunction.checkAuthenticationBotToken({
  //     String? token,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkAuthenticationBotToken",
  //         "token": token,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkAuthenticationBotToken",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1logOut.html).
  //   factory TdlibFunction.logOut()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "logOut",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method logOut",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1close.html).
  //   factory TdlibFunction.close()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "close",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method close",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1destroy.html).
  //   factory TdlibFunction.destroy()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "destroy",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method destroy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1confirmQrCodeAuthentication.html).
  //   factory TdlibFunction.confirmQrCodeAuthentication({
  //     String? link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "confirmQrCodeAuthentication",
  //         "link": link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method confirmQrCodeAuthentication",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCurrentState.html).
  //   factory TdlibFunction.getCurrentState()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCurrentState",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCurrentState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setDatabaseEncryptionKey.html).
  //   factory TdlibFunction.setDatabaseEncryptionKey({
  //     String? new_encryption_key,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setDatabaseEncryptionKey",
  //         "new_encryption_key": new_encryption_key,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setDatabaseEncryptionKey",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPasswordState.html).
  //   factory TdlibFunction.getPasswordState()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPasswordState",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPasswordState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setPassword.html).
  //   factory TdlibFunction.setPassword({
  //     String? old_password,
  //     String? new_password,
  //     String? new_hint,
  //     bool? set_recovery_email_address,
  //     String? new_recovery_email_address,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setPassword",
  //         "old_password": old_password,
  //         "new_password": new_password,
  //         "new_hint": new_hint,
  //         "set_recovery_email_address": set_recovery_email_address,
  //         "new_recovery_email_address": new_recovery_email_address,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setLoginEmailAddress.html).
  //   factory TdlibFunction.setLoginEmailAddress({
  //     String? new_login_email_address,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setLoginEmailAddress",
  //         "new_login_email_address": new_login_email_address,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setLoginEmailAddress",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendLoginEmailAddressCode.html).
  //   factory TdlibFunction.resendLoginEmailAddressCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendLoginEmailAddressCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendLoginEmailAddressCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkLoginEmailAddressCode.html).
  //   factory TdlibFunction.checkLoginEmailAddressCode({
  //     EmailAddressAuthentication? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkLoginEmailAddressCode",
  //         "code": (code != null)?code.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkLoginEmailAddressCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecoveryEmailAddress.html).
  //   factory TdlibFunction.getRecoveryEmailAddress({
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecoveryEmailAddress",
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecoveryEmailAddress",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setRecoveryEmailAddress.html).
  //   factory TdlibFunction.setRecoveryEmailAddress({
  //     String? password,
  //     String? new_recovery_email_address,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setRecoveryEmailAddress",
  //         "password": password,
  //         "new_recovery_email_address": new_recovery_email_address,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setRecoveryEmailAddress",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkRecoveryEmailAddressCode.html).
  //   factory TdlibFunction.checkRecoveryEmailAddressCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkRecoveryEmailAddressCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkRecoveryEmailAddressCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendRecoveryEmailAddressCode.html).
  //   factory TdlibFunction.resendRecoveryEmailAddressCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendRecoveryEmailAddressCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendRecoveryEmailAddressCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1requestPasswordRecovery.html).
  //   factory TdlibFunction.requestPasswordRecovery()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "requestPasswordRecovery",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method requestPasswordRecovery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkPasswordRecoveryCode.html).
  //   factory TdlibFunction.checkPasswordRecoveryCode({
  //     String? recovery_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkPasswordRecoveryCode",
  //         "recovery_code": recovery_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkPasswordRecoveryCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recoverPassword.html).
  //   factory TdlibFunction.recoverPassword({
  //     String? recovery_code,
  //     String? new_password,
  //     String? new_hint,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "recoverPassword",
  //         "recovery_code": recovery_code,
  //         "new_password": new_password,
  //         "new_hint": new_hint,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method recoverPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resetPassword.html).
  //   factory TdlibFunction.resetPassword()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resetPassword",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resetPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cancelPasswordReset.html).
  //   factory TdlibFunction.cancelPasswordReset()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "cancelPasswordReset",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method cancelPasswordReset",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createTemporaryPassword.html).
  //   factory TdlibFunction.createTemporaryPassword({
  //     String? password,
  //     int? valid_for,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createTemporaryPassword",
  //         "password": password,
  //         "valid_for": valid_for,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createTemporaryPassword",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getTemporaryPasswordState.html).
  //   factory TdlibFunction.getTemporaryPasswordState()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getTemporaryPasswordState",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getTemporaryPasswordState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMe.html).
  //   factory TdlibFunction.getMe()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMe",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMe",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getUser.html).
  //   factory TdlibFunction.getUser({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getUser",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getUser",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getUserFullInfo.html).
  //   factory TdlibFunction.getUserFullInfo({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getUserFullInfo",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getUserFullInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBasicGroup.html).
  //   factory TdlibFunction.getBasicGroup({
  //     int? basic_group_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBasicGroup",
  //         "basic_group_id": basic_group_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBasicGroup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBasicGroupFullInfo.html).
  //   factory TdlibFunction.getBasicGroupFullInfo({
  //     int? basic_group_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBasicGroupFullInfo",
  //         "basic_group_id": basic_group_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBasicGroupFullInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSupergroup.html).
  //   factory TdlibFunction.getSupergroup({
  //     int? supergroup_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSupergroup",
  //         "supergroup_id": supergroup_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSupergroup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSupergroupFullInfo.html).
  //   factory TdlibFunction.getSupergroupFullInfo({
  //     int? supergroup_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSupergroupFullInfo",
  //         "supergroup_id": supergroup_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSupergroupFullInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSecretChat.html).
  //   factory TdlibFunction.getSecretChat({
  //     int? secret_chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSecretChat",
  //         "secret_chat_id": secret_chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSecretChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChat.html).
  //   factory TdlibFunction.getChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessage.html).
  //   factory TdlibFunction.getMessage({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageLocally.html).
  //   factory TdlibFunction.getMessageLocally({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageLocally",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageLocally",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRepliedMessage.html).
  //   factory TdlibFunction.getRepliedMessage({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRepliedMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRepliedMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatPinnedMessage.html).
  //   factory TdlibFunction.getChatPinnedMessage({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatPinnedMessage",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatPinnedMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCallbackQueryMessage.html).
  //   factory TdlibFunction.getCallbackQueryMessage({
  //     int? chat_id,
  //     int? message_id,
  //     int? callback_query_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCallbackQueryMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "callback_query_id": callback_query_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCallbackQueryMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessages.html).
  //   factory TdlibFunction.getMessages({
  //     int? chat_id,
  //     List<int>? message_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessages",
  //         "chat_id": chat_id,
  //         "message_ids": message_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageThread.html).
  //   factory TdlibFunction.getMessageThread({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageThread",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageThread",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageViewers.html).
  //   factory TdlibFunction.getMessageViewers({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageViewers",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageViewers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getFile.html).
  //   factory TdlibFunction.getFile({
  //     int? file_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getFile",
  //         "file_id": file_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRemoteFile.html).
  //   factory TdlibFunction.getRemoteFile({
  //     String? remote_file_id,
  //     FileType? file_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRemoteFile",
  //         "remote_file_id": remote_file_id,
  //         "file_type": (file_type != null)?file_type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRemoteFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1loadChats.html).
  //   factory TdlibFunction.loadChats({
  //     ChatList? chat_list,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "loadChats",
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method loadChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChats.html).
  //   factory TdlibFunction.getChats({
  //     ChatList? chat_list,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChats",
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchPublicChat.html).
  //   factory TdlibFunction.searchPublicChat({
  //     String? username,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchPublicChat",
  //         "username": username,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchPublicChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchPublicChats.html).
  //   factory TdlibFunction.searchPublicChats({
  //     String? query,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchPublicChats",
  //         "query": query,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchPublicChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChats.html).
  //   factory TdlibFunction.searchChats({
  //     String? query,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChats",
  //         "query": query,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChatsOnServer.html).
  //   factory TdlibFunction.searchChatsOnServer({
  //     String? query,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChatsOnServer",
  //         "query": query,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChatsOnServer",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChatsNearby.html).
  //   factory TdlibFunction.searchChatsNearby({
  //     Location? location,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChatsNearby",
  //         "location": (location != null)?location.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChatsNearby",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getTopChats.html).
  //   factory TdlibFunction.getTopChats({
  //     TopChatCategory? category,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getTopChats",
  //         "category": (category != null)?category.toJson(): null,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getTopChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeTopChat.html).
  //   factory TdlibFunction.removeTopChat({
  //     TopChatCategory? category,
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeTopChat",
  //         "category": (category != null)?category.toJson(): null,
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeTopChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addRecentlyFoundChat.html).
  //   factory TdlibFunction.addRecentlyFoundChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addRecentlyFoundChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addRecentlyFoundChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeRecentlyFoundChat.html).
  //   factory TdlibFunction.removeRecentlyFoundChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeRecentlyFoundChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeRecentlyFoundChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearRecentlyFoundChats.html).
  //   factory TdlibFunction.clearRecentlyFoundChats()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearRecentlyFoundChats",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearRecentlyFoundChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecentlyOpenedChats.html).
  //   factory TdlibFunction.getRecentlyOpenedChats({
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecentlyOpenedChats",
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecentlyOpenedChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkChatUsername.html).
  //   factory TdlibFunction.checkChatUsername({
  //     int? chat_id,
  //     String? username,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkChatUsername",
  //         "chat_id": chat_id,
  //         "username": username,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkChatUsername",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCreatedPublicChats.html).
  //   factory TdlibFunction.getCreatedPublicChats({
  //     PublicChatType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCreatedPublicChats",
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCreatedPublicChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkCreatedPublicChatsLimit.html).
  //   factory TdlibFunction.checkCreatedPublicChatsLimit({
  //     PublicChatType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkCreatedPublicChatsLimit",
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkCreatedPublicChatsLimit",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSuitableDiscussionChats.html).
  //   factory TdlibFunction.getSuitableDiscussionChats()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSuitableDiscussionChats",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSuitableDiscussionChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getInactiveSupergroupChats.html).
  //   factory TdlibFunction.getInactiveSupergroupChats()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getInactiveSupergroupChats",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getInactiveSupergroupChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGroupsInCommon.html).
  //   factory TdlibFunction.getGroupsInCommon({
  //     int? user_id,
  //     int? offset_chat_id,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGroupsInCommon",
  //         "user_id": user_id,
  //         "offset_chat_id": offset_chat_id,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGroupsInCommon",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatHistory.html).
  //   factory TdlibFunction.getChatHistory({
  //     int? chat_id,
  //     int? from_message_id,
  //     int? offset,
  //     int? limit,
  //     bool? only_local,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatHistory",
  //         "chat_id": chat_id,
  //         "from_message_id": from_message_id,
  //         "offset": offset,
  //         "limit": limit,
  //         "only_local": only_local,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatHistory",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageThreadHistory.html).
  //   factory TdlibFunction.getMessageThreadHistory({
  //     int? chat_id,
  //     int? message_id,
  //     int? from_message_id,
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageThreadHistory",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "from_message_id": from_message_id,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageThreadHistory",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChatHistory.html).
  //   factory TdlibFunction.deleteChatHistory({
  //     int? chat_id,
  //     bool? remove_from_chat_list,
  //     bool? revoke,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChatHistory",
  //         "chat_id": chat_id,
  //         "remove_from_chat_list": remove_from_chat_list,
  //         "revoke": revoke,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChatHistory",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChat.html).
  //   factory TdlibFunction.deleteChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChatMessages.html).
  //   factory TdlibFunction.searchChatMessages({
  //     int? chat_id,
  //     String? query,
  //     MessageSender? sender_id,
  //     int? from_message_id,
  //     int? offset,
  //     int? limit,
  //     SearchMessagesFilter? filter,
  //     int? message_thread_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChatMessages",
  //         "chat_id": chat_id,
  //         "query": query,
  //         "sender_id": (sender_id != null)?sender_id.toJson(): null,
  //         "from_message_id": from_message_id,
  //         "offset": offset,
  //         "limit": limit,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "message_thread_id": message_thread_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChatMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchMessages.html).
  //   factory TdlibFunction.searchMessages({
  //     ChatList? chat_list,
  //     String? query,
  //     int? offset_date,
  //     int? offset_chat_id,
  //     int? offset_message_id,
  //     int? limit,
  //     SearchMessagesFilter? filter,
  //     int? min_date,
  //     int? max_date,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchMessages",
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //         "query": query,
  //         "offset_date": offset_date,
  //         "offset_chat_id": offset_chat_id,
  //         "offset_message_id": offset_message_id,
  //         "limit": limit,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "min_date": min_date,
  //         "max_date": max_date,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchSecretMessages.html).
  //   factory TdlibFunction.searchSecretMessages({
  //     int? chat_id,
  //     String? query,
  //     String? offset,
  //     int? limit,
  //     SearchMessagesFilter? filter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchSecretMessages",
  //         "chat_id": chat_id,
  //         "query": query,
  //         "offset": offset,
  //         "limit": limit,
  //         "filter": (filter != null)?filter.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchSecretMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchCallMessages.html).
  //   factory TdlibFunction.searchCallMessages({
  //     int? from_message_id,
  //     int? limit,
  //     bool? only_missed,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchCallMessages",
  //         "from_message_id": from_message_id,
  //         "limit": limit,
  //         "only_missed": only_missed,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchCallMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchOutgoingDocumentMessages.html).
  //   factory TdlibFunction.searchOutgoingDocumentMessages({
  //     String? query,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchOutgoingDocumentMessages",
  //         "query": query,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchOutgoingDocumentMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteAllCallMessages.html).
  //   factory TdlibFunction.deleteAllCallMessages({
  //     bool? revoke,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteAllCallMessages",
  //         "revoke": revoke,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteAllCallMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChatRecentLocationMessages.html).
  //   factory TdlibFunction.searchChatRecentLocationMessages({
  //     int? chat_id,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChatRecentLocationMessages",
  //         "chat_id": chat_id,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChatRecentLocationMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getActiveLiveLocationMessages.html).
  //   factory TdlibFunction.getActiveLiveLocationMessages()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getActiveLiveLocationMessages",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getActiveLiveLocationMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatMessageByDate.html).
  //   factory TdlibFunction.getChatMessageByDate({
  //     int? chat_id,
  //     int? date,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatMessageByDate",
  //         "chat_id": chat_id,
  //         "date": date,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatMessageByDate",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatSparseMessagePositions.html).
  //   factory TdlibFunction.getChatSparseMessagePositions({
  //     int? chat_id,
  //     SearchMessagesFilter? filter,
  //     int? from_message_id,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatSparseMessagePositions",
  //         "chat_id": chat_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "from_message_id": from_message_id,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatSparseMessagePositions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatMessageCalendar.html).
  //   factory TdlibFunction.getChatMessageCalendar({
  //     int? chat_id,
  //     SearchMessagesFilter? filter,
  //     int? from_message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatMessageCalendar",
  //         "chat_id": chat_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "from_message_id": from_message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatMessageCalendar",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatMessageCount.html).
  //   factory TdlibFunction.getChatMessageCount({
  //     int? chat_id,
  //     SearchMessagesFilter? filter,
  //     bool? return_local,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatMessageCount",
  //         "chat_id": chat_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "return_local": return_local,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatMessageCount",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatMessagePosition.html).
  //   factory TdlibFunction.getChatMessagePosition({
  //     int? chat_id,
  //     int? message_id,
  //     SearchMessagesFilter? filter,
  //     int? message_thread_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatMessagePosition",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "message_thread_id": message_thread_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatMessagePosition",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatScheduledMessages.html).
  //   factory TdlibFunction.getChatScheduledMessages({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatScheduledMessages",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatScheduledMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessagePublicForwards.html).
  //   factory TdlibFunction.getMessagePublicForwards({
  //     int? chat_id,
  //     int? message_id,
  //     String? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessagePublicForwards",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessagePublicForwards",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatSponsoredMessage.html).
  //   factory TdlibFunction.getChatSponsoredMessage({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatSponsoredMessage",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatSponsoredMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeNotification.html).
  //   factory TdlibFunction.removeNotification({
  //     int? notification_group_id,
  //     int? notification_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeNotification",
  //         "notification_group_id": notification_group_id,
  //         "notification_id": notification_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeNotification",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeNotificationGroup.html).
  //   factory TdlibFunction.removeNotificationGroup({
  //     int? notification_group_id,
  //     int? max_notification_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeNotificationGroup",
  //         "notification_group_id": notification_group_id,
  //         "max_notification_id": max_notification_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeNotificationGroup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageLink.html).
  //   factory TdlibFunction.getMessageLink({
  //     int? chat_id,
  //     int? message_id,
  //     int? media_timestamp,
  //     bool? for_album,
  //     bool? for_comment,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageLink",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "media_timestamp": media_timestamp,
  //         "for_album": for_album,
  //         "for_comment": for_comment,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageEmbeddingCode.html).
  //   factory TdlibFunction.getMessageEmbeddingCode({
  //     int? chat_id,
  //     int? message_id,
  //     bool? for_album,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageEmbeddingCode",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "for_album": for_album,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageEmbeddingCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageLinkInfo.html).
  //   factory TdlibFunction.getMessageLinkInfo({
  //     String? url,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageLinkInfo",
  //         "url": url,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageLinkInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1translateText.html).
  //   factory TdlibFunction.translateText({
  //     String? text,
  //     String? from_language_code,
  //     String? to_language_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "translateText",
  //         "text": text,
  //         "from_language_code": from_language_code,
  //         "to_language_code": to_language_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method translateText",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1recognizeSpeech.html).
  //   factory TdlibFunction.recognizeSpeech({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "recognizeSpeech",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method recognizeSpeech",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1rateSpeechRecognition.html).
  //   factory TdlibFunction.rateSpeechRecognition({
  //     int? chat_id,
  //     int? message_id,
  //     bool? is_good,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "rateSpeechRecognition",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "is_good": is_good,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method rateSpeechRecognition",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatAvailableMessageSenders.html).
  //   factory TdlibFunction.getChatAvailableMessageSenders({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatAvailableMessageSenders",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatAvailableMessageSenders",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatMessageSender.html).
  //   factory TdlibFunction.setChatMessageSender({
  //     int? chat_id,
  //     MessageSender? message_sender_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatMessageSender",
  //         "chat_id": chat_id,
  //         "message_sender_id": (message_sender_id != null)?message_sender_id.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatMessageSender",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendMessage.html).
  //   factory TdlibFunction.sendMessage({
  //     int? chat_id,
  //     int? message_thread_id,
  //     int? reply_to_message_id,
  //     MessageSendOptions? options,
  //     ReplyMarkup? reply_markup,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendMessage",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "reply_to_message_id": reply_to_message_id,
  //         "options": (options != null)?options.toJson(): null,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendMessageAlbum.html).
  //   factory TdlibFunction.sendMessageAlbum({
  //     int? chat_id,
  //     int? message_thread_id,
  //     int? reply_to_message_id,
  //     MessageSendOptions? options,
  //     List<InputMessageContent>? input_message_contents,
  //     bool? only_preview,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendMessageAlbum",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "reply_to_message_id": reply_to_message_id,
  //         "options": (options != null)?options.toJson(): null,
  //         "input_message_contents": (input_message_contents != null)?input_message_contents.toJson(): null,
  //         "only_preview": only_preview,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendMessageAlbum",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendBotStartMessage.html).
  //   factory TdlibFunction.sendBotStartMessage({
  //     int? bot_user_id,
  //     int? chat_id,
  //     String? parameter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendBotStartMessage",
  //         "bot_user_id": bot_user_id,
  //         "chat_id": chat_id,
  //         "parameter": parameter,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendBotStartMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendInlineQueryResultMessage.html).
  //   factory TdlibFunction.sendInlineQueryResultMessage({
  //     int? chat_id,
  //     int? message_thread_id,
  //     int? reply_to_message_id,
  //     MessageSendOptions? options,
  //     int? query_id,
  //     String? result_id,
  //     bool? hide_via_bot,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendInlineQueryResultMessage",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "reply_to_message_id": reply_to_message_id,
  //         "options": (options != null)?options.toJson(): null,
  //         "query_id": query_id,
  //         "result_id": result_id,
  //         "hide_via_bot": hide_via_bot,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendInlineQueryResultMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1forwardMessages.html).
  //   factory TdlibFunction.forwardMessages({
  //     int? chat_id,
  //     int? from_chat_id,
  //     List<int>? message_ids,
  //     MessageSendOptions? options,
  //     bool? send_copy,
  //     bool? remove_caption,
  //     bool? only_preview,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "forwardMessages",
  //         "chat_id": chat_id,
  //         "from_chat_id": from_chat_id,
  //         "message_ids": message_ids,
  //         "options": (options != null)?options.toJson(): null,
  //         "send_copy": send_copy,
  //         "remove_caption": remove_caption,
  //         "only_preview": only_preview,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method forwardMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendMessages.html).
  //   factory TdlibFunction.resendMessages({
  //     int? chat_id,
  //     List<int>? message_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendMessages",
  //         "chat_id": chat_id,
  //         "message_ids": message_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendChatScreenshotTakenNotification.html).
  //   factory TdlibFunction.sendChatScreenshotTakenNotification({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendChatScreenshotTakenNotification",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendChatScreenshotTakenNotification",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addLocalMessage.html).
  //   factory TdlibFunction.addLocalMessage({
  //     int? chat_id,
  //     MessageSender? sender_id,
  //     int? reply_to_message_id,
  //     bool? disable_notification,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addLocalMessage",
  //         "chat_id": chat_id,
  //         "sender_id": (sender_id != null)?sender_id.toJson(): null,
  //         "reply_to_message_id": reply_to_message_id,
  //         "disable_notification": disable_notification,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addLocalMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteMessages.html).
  //   factory TdlibFunction.deleteMessages({
  //     int? chat_id,
  //     List<int>? message_ids,
  //     bool? revoke,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteMessages",
  //         "chat_id": chat_id,
  //         "message_ids": message_ids,
  //         "revoke": revoke,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChatMessagesBySender.html).
  //   factory TdlibFunction.deleteChatMessagesBySender({
  //     int? chat_id,
  //     MessageSender? sender_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChatMessagesBySender",
  //         "chat_id": chat_id,
  //         "sender_id": (sender_id != null)?sender_id.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChatMessagesBySender",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChatMessagesByDate.html).
  //   factory TdlibFunction.deleteChatMessagesByDate({
  //     int? chat_id,
  //     int? min_date,
  //     int? max_date,
  //     bool? revoke,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChatMessagesByDate",
  //         "chat_id": chat_id,
  //         "min_date": min_date,
  //         "max_date": max_date,
  //         "revoke": revoke,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChatMessagesByDate",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageText.html).
  //   factory TdlibFunction.editMessageText({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageText",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageText",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageLiveLocation.html).
  //   factory TdlibFunction.editMessageLiveLocation({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //     Location? location,
  //     int? heading,
  //     int? proximity_alert_radius,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageLiveLocation",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "location": (location != null)?location.toJson(): null,
  //         "heading": heading,
  //         "proximity_alert_radius": proximity_alert_radius,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageLiveLocation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageMedia.html).
  //   factory TdlibFunction.editMessageMedia({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageMedia",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageMedia",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageCaption.html).
  //   factory TdlibFunction.editMessageCaption({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //     FormattedText? caption,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageCaption",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "caption": (caption != null)?caption.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageCaption",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageReplyMarkup.html).
  //   factory TdlibFunction.editMessageReplyMarkup({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageReplyMarkup",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageReplyMarkup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editInlineMessageText.html).
  //   factory TdlibFunction.editInlineMessageText({
  //     String? inline_message_id,
  //     ReplyMarkup? reply_markup,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editInlineMessageText",
  //         "inline_message_id": inline_message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editInlineMessageText",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editInlineMessageLiveLocation.html).
  //   factory TdlibFunction.editInlineMessageLiveLocation({
  //     String? inline_message_id,
  //     ReplyMarkup? reply_markup,
  //     Location? location,
  //     int? heading,
  //     int? proximity_alert_radius,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editInlineMessageLiveLocation",
  //         "inline_message_id": inline_message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "location": (location != null)?location.toJson(): null,
  //         "heading": heading,
  //         "proximity_alert_radius": proximity_alert_radius,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editInlineMessageLiveLocation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editInlineMessageMedia.html).
  //   factory TdlibFunction.editInlineMessageMedia({
  //     String? inline_message_id,
  //     ReplyMarkup? reply_markup,
  //     InputMessageContent? input_message_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editInlineMessageMedia",
  //         "inline_message_id": inline_message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "input_message_content": (input_message_content != null)?input_message_content.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editInlineMessageMedia",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editInlineMessageCaption.html).
  //   factory TdlibFunction.editInlineMessageCaption({
  //     String? inline_message_id,
  //     ReplyMarkup? reply_markup,
  //     FormattedText? caption,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editInlineMessageCaption",
  //         "inline_message_id": inline_message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //         "caption": (caption != null)?caption.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editInlineMessageCaption",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editInlineMessageReplyMarkup.html).
  //   factory TdlibFunction.editInlineMessageReplyMarkup({
  //     String? inline_message_id,
  //     ReplyMarkup? reply_markup,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editInlineMessageReplyMarkup",
  //         "inline_message_id": inline_message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editInlineMessageReplyMarkup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editMessageSchedulingState.html).
  //   factory TdlibFunction.editMessageSchedulingState({
  //     int? chat_id,
  //     int? message_id,
  //     MessageSchedulingState? scheduling_state,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editMessageSchedulingState",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "scheduling_state": (scheduling_state != null)?scheduling_state.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editMessageSchedulingState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getEmojiReaction.html).
  //   factory TdlibFunction.getEmojiReaction({
  //     String? emoji,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getEmojiReaction",
  //         "emoji": emoji,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getEmojiReaction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCustomEmojiReactionAnimations.html).
  //   factory TdlibFunction.getCustomEmojiReactionAnimations()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCustomEmojiReactionAnimations",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCustomEmojiReactionAnimations",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageAvailableReactions.html).
  //   factory TdlibFunction.getMessageAvailableReactions({
  //     int? chat_id,
  //     int? message_id,
  //     int? row_size,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageAvailableReactions",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "row_size": row_size,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageAvailableReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearRecentReactions.html).
  //   factory TdlibFunction.clearRecentReactions()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearRecentReactions",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearRecentReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addMessageReaction.html).
  //   factory TdlibFunction.addMessageReaction({
  //     int? chat_id,
  //     int? message_id,
  //     ReactionType? reaction_type,
  //     bool? is_big,
  //     bool? update_recent_reactions,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addMessageReaction",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reaction_type": (reaction_type != null)?reaction_type.toJson(): null,
  //         "is_big": is_big,
  //         "update_recent_reactions": update_recent_reactions,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addMessageReaction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeMessageReaction.html).
  //   factory TdlibFunction.removeMessageReaction({
  //     int? chat_id,
  //     int? message_id,
  //     ReactionType? reaction_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeMessageReaction",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reaction_type": (reaction_type != null)?reaction_type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeMessageReaction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageAddedReactions.html).
  //   factory TdlibFunction.getMessageAddedReactions({
  //     int? chat_id,
  //     int? message_id,
  //     ReactionType? reaction_type,
  //     String? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageAddedReactions",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reaction_type": (reaction_type != null)?reaction_type.toJson(): null,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageAddedReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setDefaultReactionType.html).
  //   factory TdlibFunction.setDefaultReactionType({
  //     ReactionType? reaction_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setDefaultReactionType",
  //         "reaction_type": (reaction_type != null)?reaction_type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setDefaultReactionType",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getTextEntities.html).
  //   factory TdlibFunction.getTextEntities({
  //     String? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getTextEntities",
  //         "text": text,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getTextEntities",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1parseTextEntities.html).
  //   factory TdlibFunction.parseTextEntities({
  //     String? text,
  //     TextParseMode? parse_mode,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "parseTextEntities",
  //         "text": text,
  //         "parse_mode": (parse_mode != null)?parse_mode.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method parseTextEntities",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1parseMarkdown.html).
  //   factory TdlibFunction.parseMarkdown({
  //     FormattedText? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "parseMarkdown",
  //         "text": (text != null)?text.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method parseMarkdown",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMarkdownText.html).
  //   factory TdlibFunction.getMarkdownText({
  //     FormattedText? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMarkdownText",
  //         "text": (text != null)?text.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMarkdownText",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getFileMimeType.html).
  //   factory TdlibFunction.getFileMimeType({
  //     String? file_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getFileMimeType",
  //         "file_name": file_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getFileMimeType",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getFileExtension.html).
  //   factory TdlibFunction.getFileExtension({
  //     String? mime_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getFileExtension",
  //         "mime_type": mime_type,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getFileExtension",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cleanFileName.html).
  //   factory TdlibFunction.cleanFileName({
  //     String? file_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "cleanFileName",
  //         "file_name": file_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method cleanFileName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLanguagePackString.html).
  //   factory TdlibFunction.getLanguagePackString({
  //     String? language_pack_database_path,
  //     String? localization_target,
  //     String? language_pack_id,
  //     String? key,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLanguagePackString",
  //         "language_pack_database_path": language_pack_database_path,
  //         "localization_target": localization_target,
  //         "language_pack_id": language_pack_id,
  //         "key": key,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLanguagePackString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getJsonValue.html).
  //   factory TdlibFunction.getJsonValue({
  //     String? json,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getJsonValue",
  //         "json": json,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getJsonValue",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getJsonString.html).
  //   factory TdlibFunction.getJsonString({
  //     JsonValue? json_value,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getJsonString",
  //         "json_value": (json_value != null)?json_value.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getJsonString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getThemeParametersJsonString.html).
  //   factory TdlibFunction.getThemeParametersJsonString({
  //     ThemeParameters? theme,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getThemeParametersJsonString",
  //         "theme": (theme != null)?theme.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getThemeParametersJsonString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setPollAnswer.html).
  //   factory TdlibFunction.setPollAnswer({
  //     int? chat_id,
  //     int? message_id,
  //     List<int>? option_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setPollAnswer",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "option_ids": option_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setPollAnswer",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPollVoters.html).
  //   factory TdlibFunction.getPollVoters({
  //     int? chat_id,
  //     int? message_id,
  //     int? option_id,
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPollVoters",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "option_id": option_id,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPollVoters",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1stopPoll.html).
  //   factory TdlibFunction.stopPoll({
  //     int? chat_id,
  //     int? message_id,
  //     ReplyMarkup? reply_markup,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "stopPoll",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "reply_markup": (reply_markup != null)?reply_markup.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method stopPoll",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1hideSuggestedAction.html).
  //   factory TdlibFunction.hideSuggestedAction({
  //     SuggestedAction? action,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "hideSuggestedAction",
  //         "action": (action != null)?action.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method hideSuggestedAction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLoginUrlInfo.html).
  //   factory TdlibFunction.getLoginUrlInfo({
  //     int? chat_id,
  //     int? message_id,
  //     int? button_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLoginUrlInfo",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "button_id": button_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLoginUrlInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLoginUrl.html).
  //   factory TdlibFunction.getLoginUrl({
  //     int? chat_id,
  //     int? message_id,
  //     int? button_id,
  //     bool? allow_write_access,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLoginUrl",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "button_id": button_id,
  //         "allow_write_access": allow_write_access,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLoginUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getInlineQueryResults.html).
  //   factory TdlibFunction.getInlineQueryResults({
  //     int? bot_user_id,
  //     int? chat_id,
  //     Location? user_location,
  //     String? query,
  //     String? offset,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getInlineQueryResults",
  //         "bot_user_id": bot_user_id,
  //         "chat_id": chat_id,
  //         "user_location": (user_location != null)?user_location.toJson(): null,
  //         "query": query,
  //         "offset": offset,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getInlineQueryResults",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerInlineQuery.html).
  //   factory TdlibFunction.answerInlineQuery({
  //     int? inline_query_id,
  //     bool? is_personal,
  //     List<InputInlineQueryResult>? results,
  //     int? cache_time,
  //     String? next_offset,
  //     String? switch_pm_text,
  //     String? switch_pm_parameter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerInlineQuery",
  //         "inline_query_id": inline_query_id,
  //         "is_personal": is_personal,
  //         "results": (results != null)?results.toJson(): null,
  //         "cache_time": cache_time,
  //         "next_offset": next_offset,
  //         "switch_pm_text": switch_pm_text,
  //         "switch_pm_parameter": switch_pm_parameter,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerInlineQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getWebAppUrl.html).
  //   factory TdlibFunction.getWebAppUrl({
  //     int? bot_user_id,
  //     String? url,
  //     ThemeParameters? theme,
  //     String? application_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getWebAppUrl",
  //         "bot_user_id": bot_user_id,
  //         "url": url,
  //         "theme": (theme != null)?theme.toJson(): null,
  //         "application_name": application_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getWebAppUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendWebAppData.html).
  //   factory TdlibFunction.sendWebAppData({
  //     int? bot_user_id,
  //     String? button_text,
  //     String? data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendWebAppData",
  //         "bot_user_id": bot_user_id,
  //         "button_text": button_text,
  //         "data": data,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendWebAppData",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1openWebApp.html).
  //   factory TdlibFunction.openWebApp({
  //     int? chat_id,
  //     int? bot_user_id,
  //     String? url,
  //     ThemeParameters? theme,
  //     String? application_name,
  //     int? reply_to_message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "openWebApp",
  //         "chat_id": chat_id,
  //         "bot_user_id": bot_user_id,
  //         "url": url,
  //         "theme": (theme != null)?theme.toJson(): null,
  //         "application_name": application_name,
  //         "reply_to_message_id": reply_to_message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method openWebApp",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1closeWebApp.html).
  //   factory TdlibFunction.closeWebApp({
  //     int? web_app_launch_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "closeWebApp",
  //         "web_app_launch_id": web_app_launch_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method closeWebApp",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerWebAppQuery.html).
  //   factory TdlibFunction.answerWebAppQuery({
  //     String? web_app_query_id,
  //     InputInlineQueryResult? result,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerWebAppQuery",
  //         "web_app_query_id": web_app_query_id,
  //         "result": (result != null)?result.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerWebAppQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCallbackQueryAnswer.html).
  //   factory TdlibFunction.getCallbackQueryAnswer({
  //     int? chat_id,
  //     int? message_id,
  //     CallbackQueryPayload? payload,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCallbackQueryAnswer",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "payload": (payload != null)?payload.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCallbackQueryAnswer",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerCallbackQuery.html).
  //   factory TdlibFunction.answerCallbackQuery({
  //     int? callback_query_id,
  //     String? text,
  //     bool? show_alert,
  //     String? url,
  //     int? cache_time,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerCallbackQuery",
  //         "callback_query_id": callback_query_id,
  //         "text": text,
  //         "show_alert": show_alert,
  //         "url": url,
  //         "cache_time": cache_time,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerCallbackQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerShippingQuery.html).
  //   factory TdlibFunction.answerShippingQuery({
  //     int? shipping_query_id,
  //     List<ShippingOption>? shipping_options,
  //     String? error_message,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerShippingQuery",
  //         "shipping_query_id": shipping_query_id,
  //         "shipping_options": (shipping_options != null)?shipping_options.toJson(): null,
  //         "error_message": error_message,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerShippingQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerPreCheckoutQuery.html).
  //   factory TdlibFunction.answerPreCheckoutQuery({
  //     int? pre_checkout_query_id,
  //     String? error_message,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerPreCheckoutQuery",
  //         "pre_checkout_query_id": pre_checkout_query_id,
  //         "error_message": error_message,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerPreCheckoutQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setGameScore.html).
  //   factory TdlibFunction.setGameScore({
  //     int? chat_id,
  //     int? message_id,
  //     bool? edit_message,
  //     int? user_id,
  //     int? score,
  //     bool? force,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setGameScore",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "edit_message": edit_message,
  //         "user_id": user_id,
  //         "score": score,
  //         "force": force,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setGameScore",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setInlineGameScore.html).
  //   factory TdlibFunction.setInlineGameScore({
  //     String? inline_message_id,
  //     bool? edit_message,
  //     int? user_id,
  //     int? score,
  //     bool? force,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setInlineGameScore",
  //         "inline_message_id": inline_message_id,
  //         "edit_message": edit_message,
  //         "user_id": user_id,
  //         "score": score,
  //         "force": force,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setInlineGameScore",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGameHighScores.html).
  //   factory TdlibFunction.getGameHighScores({
  //     int? chat_id,
  //     int? message_id,
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGameHighScores",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGameHighScores",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getInlineGameHighScores.html).
  //   factory TdlibFunction.getInlineGameHighScores({
  //     String? inline_message_id,
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getInlineGameHighScores",
  //         "inline_message_id": inline_message_id,
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getInlineGameHighScores",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChatReplyMarkup.html).
  //   factory TdlibFunction.deleteChatReplyMarkup({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChatReplyMarkup",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChatReplyMarkup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendChatAction.html).
  //   factory TdlibFunction.sendChatAction({
  //     int? chat_id,
  //     int? message_thread_id,
  //     ChatAction? action,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendChatAction",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "action": (action != null)?action.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendChatAction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1openChat.html).
  //   factory TdlibFunction.openChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "openChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method openChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1closeChat.html).
  //   factory TdlibFunction.closeChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "closeChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method closeChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1viewMessages.html).
  //   factory TdlibFunction.viewMessages({
  //     int? chat_id,
  //     int? message_thread_id,
  //     List<int>? message_ids,
  //     bool? force_read,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "viewMessages",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "message_ids": message_ids,
  //         "force_read": force_read,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method viewMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1openMessageContent.html).
  //   factory TdlibFunction.openMessageContent({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "openMessageContent",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method openMessageContent",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clickAnimatedEmojiMessage.html).
  //   factory TdlibFunction.clickAnimatedEmojiMessage({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clickAnimatedEmojiMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clickAnimatedEmojiMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getInternalLinkType.html).
  //   factory TdlibFunction.getInternalLinkType({
  //     String? link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getInternalLinkType",
  //         "link": link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getInternalLinkType",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getExternalLinkInfo.html).
  //   factory TdlibFunction.getExternalLinkInfo({
  //     String? link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getExternalLinkInfo",
  //         "link": link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getExternalLinkInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getExternalLink.html).
  //   factory TdlibFunction.getExternalLink({
  //     String? link,
  //     bool? allow_write_access,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getExternalLink",
  //         "link": link,
  //         "allow_write_access": allow_write_access,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getExternalLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1readAllChatMentions.html).
  //   factory TdlibFunction.readAllChatMentions({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "readAllChatMentions",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method readAllChatMentions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1readAllChatReactions.html).
  //   factory TdlibFunction.readAllChatReactions({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "readAllChatReactions",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method readAllChatReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createPrivateChat.html).
  //   factory TdlibFunction.createPrivateChat({
  //     int? user_id,
  //     bool? force,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createPrivateChat",
  //         "user_id": user_id,
  //         "force": force,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createPrivateChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createBasicGroupChat.html).
  //   factory TdlibFunction.createBasicGroupChat({
  //     int? basic_group_id,
  //     bool? force,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createBasicGroupChat",
  //         "basic_group_id": basic_group_id,
  //         "force": force,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createBasicGroupChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createSupergroupChat.html).
  //   factory TdlibFunction.createSupergroupChat({
  //     int? supergroup_id,
  //     bool? force,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createSupergroupChat",
  //         "supergroup_id": supergroup_id,
  //         "force": force,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createSupergroupChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createSecretChat.html).
  //   factory TdlibFunction.createSecretChat({
  //     int? secret_chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createSecretChat",
  //         "secret_chat_id": secret_chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createSecretChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createNewBasicGroupChat.html).
  //   factory TdlibFunction.createNewBasicGroupChat({
  //     List<int>? user_ids,
  //     String? title,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createNewBasicGroupChat",
  //         "user_ids": user_ids,
  //         "title": title,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createNewBasicGroupChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createNewSupergroupChat.html).
  //   factory TdlibFunction.createNewSupergroupChat({
  //     String? title,
  //     bool? is_channel,
  //     String? description,
  //     ChatLocation? location,
  //     bool? for_import,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createNewSupergroupChat",
  //         "title": title,
  //         "is_channel": is_channel,
  //         "description": description,
  //         "location": (location != null)?location.toJson(): null,
  //         "for_import": for_import,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createNewSupergroupChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createNewSecretChat.html).
  //   factory TdlibFunction.createNewSecretChat({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createNewSecretChat",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createNewSecretChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1upgradeBasicGroupChatToSupergroupChat.html).
  //   factory TdlibFunction.upgradeBasicGroupChatToSupergroupChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "upgradeBasicGroupChatToSupergroupChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method upgradeBasicGroupChatToSupergroupChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatListsToAddChat.html).
  //   factory TdlibFunction.getChatListsToAddChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatListsToAddChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatListsToAddChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addChatToList.html).
  //   factory TdlibFunction.addChatToList({
  //     int? chat_id,
  //     ChatList? chat_list,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addChatToList",
  //         "chat_id": chat_id,
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addChatToList",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatFilter.html).
  //   factory TdlibFunction.getChatFilter({
  //     int? chat_filter_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatFilter",
  //         "chat_filter_id": chat_filter_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatFilter",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createChatFilter.html).
  //   factory TdlibFunction.createChatFilter({
  //     ChatFilter? filter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createChatFilter",
  //         "filter": (filter != null)?filter.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createChatFilter",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editChatFilter.html).
  //   factory TdlibFunction.editChatFilter({
  //     int? chat_filter_id,
  //     ChatFilter? filter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editChatFilter",
  //         "chat_filter_id": chat_filter_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editChatFilter",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteChatFilter.html).
  //   factory TdlibFunction.deleteChatFilter({
  //     int? chat_filter_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteChatFilter",
  //         "chat_filter_id": chat_filter_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteChatFilter",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reorderChatFilters.html).
  //   factory TdlibFunction.reorderChatFilters({
  //     List<int>? chat_filter_ids,
  //     int? main_chat_list_position,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reorderChatFilters",
  //         "chat_filter_ids": chat_filter_ids,
  //         "main_chat_list_position": main_chat_list_position,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reorderChatFilters",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecommendedChatFilters.html).
  //   factory TdlibFunction.getRecommendedChatFilters()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecommendedChatFilters",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecommendedChatFilters",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatFilterDefaultIconName.html).
  //   factory TdlibFunction.getChatFilterDefaultIconName({
  //     ChatFilter? filter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatFilterDefaultIconName",
  //         "filter": (filter != null)?filter.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatFilterDefaultIconName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatTitle.html).
  //   factory TdlibFunction.setChatTitle({
  //     int? chat_id,
  //     String? title,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatTitle",
  //         "chat_id": chat_id,
  //         "title": title,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatTitle",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatPhoto.html).
  //   factory TdlibFunction.setChatPhoto({
  //     int? chat_id,
  //     InputChatPhoto? photo,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatPhoto",
  //         "chat_id": chat_id,
  //         "photo": (photo != null)?photo.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatPhoto",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatMessageTtl.html).
  //   factory TdlibFunction.setChatMessageTtl({
  //     int? chat_id,
  //     int? ttl,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatMessageTtl",
  //         "chat_id": chat_id,
  //         "ttl": ttl,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatMessageTtl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatPermissions.html).
  //   factory TdlibFunction.setChatPermissions({
  //     int? chat_id,
  //     ChatPermissions? permissions,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatPermissions",
  //         "chat_id": chat_id,
  //         "permissions": (permissions != null)?permissions.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatPermissions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatTheme.html).
  //   factory TdlibFunction.setChatTheme({
  //     int? chat_id,
  //     String? theme_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatTheme",
  //         "chat_id": chat_id,
  //         "theme_name": theme_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatTheme",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatDraftMessage.html).
  //   factory TdlibFunction.setChatDraftMessage({
  //     int? chat_id,
  //     int? message_thread_id,
  //     DraftMessage? draft_message,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatDraftMessage",
  //         "chat_id": chat_id,
  //         "message_thread_id": message_thread_id,
  //         "draft_message": (draft_message != null)?draft_message.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatDraftMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatNotificationSettings.html).
  //   factory TdlibFunction.setChatNotificationSettings({
  //     int? chat_id,
  //     ChatNotificationSettings? notification_settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatNotificationSettings",
  //         "chat_id": chat_id,
  //         "notification_settings": (notification_settings != null)?notification_settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatNotificationSettings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleChatHasProtectedContent.html).
  //   factory TdlibFunction.toggleChatHasProtectedContent({
  //     int? chat_id,
  //     bool? has_protected_content,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleChatHasProtectedContent",
  //         "chat_id": chat_id,
  //         "has_protected_content": has_protected_content,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleChatHasProtectedContent",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleChatIsMarkedAsUnread.html).
  //   factory TdlibFunction.toggleChatIsMarkedAsUnread({
  //     int? chat_id,
  //     bool? is_marked_as_unread,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleChatIsMarkedAsUnread",
  //         "chat_id": chat_id,
  //         "is_marked_as_unread": is_marked_as_unread,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleChatIsMarkedAsUnread",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleChatDefaultDisableNotification.html).
  //   factory TdlibFunction.toggleChatDefaultDisableNotification({
  //     int? chat_id,
  //     bool? default_disable_notification,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleChatDefaultDisableNotification",
  //         "chat_id": chat_id,
  //         "default_disable_notification": default_disable_notification,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleChatDefaultDisableNotification",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatAvailableReactions.html).
  //   factory TdlibFunction.setChatAvailableReactions({
  //     int? chat_id,
  //     ChatAvailableReactions? available_reactions,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatAvailableReactions",
  //         "chat_id": chat_id,
  //         "available_reactions": (available_reactions != null)?available_reactions.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatAvailableReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatClientData.html).
  //   factory TdlibFunction.setChatClientData({
  //     int? chat_id,
  //     String? client_data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatClientData",
  //         "chat_id": chat_id,
  //         "client_data": client_data,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatClientData",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatDescription.html).
  //   factory TdlibFunction.setChatDescription({
  //     int? chat_id,
  //     String? description,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatDescription",
  //         "chat_id": chat_id,
  //         "description": description,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatDescription",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatDiscussionGroup.html).
  //   factory TdlibFunction.setChatDiscussionGroup({
  //     int? chat_id,
  //     int? discussion_chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatDiscussionGroup",
  //         "chat_id": chat_id,
  //         "discussion_chat_id": discussion_chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatDiscussionGroup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatLocation.html).
  //   factory TdlibFunction.setChatLocation({
  //     int? chat_id,
  //     ChatLocation? location,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatLocation",
  //         "chat_id": chat_id,
  //         "location": (location != null)?location.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatLocation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatSlowModeDelay.html).
  //   factory TdlibFunction.setChatSlowModeDelay({
  //     int? chat_id,
  //     int? slow_mode_delay,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatSlowModeDelay",
  //         "chat_id": chat_id,
  //         "slow_mode_delay": slow_mode_delay,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatSlowModeDelay",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1pinChatMessage.html).
  //   factory TdlibFunction.pinChatMessage({
  //     int? chat_id,
  //     int? message_id,
  //     bool? disable_notification,
  //     bool? only_for_self,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "pinChatMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "disable_notification": disable_notification,
  //         "only_for_self": only_for_self,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method pinChatMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unpinChatMessage.html).
  //   factory TdlibFunction.unpinChatMessage({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "unpinChatMessage",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method unpinChatMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1unpinAllChatMessages.html).
  //   factory TdlibFunction.unpinAllChatMessages({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "unpinAllChatMessages",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method unpinAllChatMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1joinChat.html).
  //   factory TdlibFunction.joinChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "joinChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method joinChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1leaveChat.html).
  //   factory TdlibFunction.leaveChat({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "leaveChat",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method leaveChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addChatMember.html).
  //   factory TdlibFunction.addChatMember({
  //     int? chat_id,
  //     int? user_id,
  //     int? forward_limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addChatMember",
  //         "chat_id": chat_id,
  //         "user_id": user_id,
  //         "forward_limit": forward_limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addChatMember",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addChatMembers.html).
  //   factory TdlibFunction.addChatMembers({
  //     int? chat_id,
  //     List<int>? user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addChatMembers",
  //         "chat_id": chat_id,
  //         "user_ids": user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addChatMembers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setChatMemberStatus.html).
  //   factory TdlibFunction.setChatMemberStatus({
  //     int? chat_id,
  //     MessageSender? member_id,
  //     ChatMemberStatus? status,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setChatMemberStatus",
  //         "chat_id": chat_id,
  //         "member_id": (member_id != null)?member_id.toJson(): null,
  //         "status": (status != null)?status.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setChatMemberStatus",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1banChatMember.html).
  //   factory TdlibFunction.banChatMember({
  //     int? chat_id,
  //     MessageSender? member_id,
  //     int? banned_until_date,
  //     bool? revoke_messages,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "banChatMember",
  //         "chat_id": chat_id,
  //         "member_id": (member_id != null)?member_id.toJson(): null,
  //         "banned_until_date": banned_until_date,
  //         "revoke_messages": revoke_messages,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method banChatMember",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1canTransferOwnership.html).
  //   factory TdlibFunction.canTransferOwnership()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "canTransferOwnership",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method canTransferOwnership",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1transferChatOwnership.html).
  //   factory TdlibFunction.transferChatOwnership({
  //     int? chat_id,
  //     int? user_id,
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "transferChatOwnership",
  //         "chat_id": chat_id,
  //         "user_id": user_id,
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method transferChatOwnership",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatMember.html).
  //   factory TdlibFunction.getChatMember({
  //     int? chat_id,
  //     MessageSender? member_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatMember",
  //         "chat_id": chat_id,
  //         "member_id": (member_id != null)?member_id.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatMember",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchChatMembers.html).
  //   factory TdlibFunction.searchChatMembers({
  //     int? chat_id,
  //     String? query,
  //     int? limit,
  //     ChatMembersFilter? filter,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchChatMembers",
  //         "chat_id": chat_id,
  //         "query": query,
  //         "limit": limit,
  //         "filter": (filter != null)?filter.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchChatMembers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatAdministrators.html).
  //   factory TdlibFunction.getChatAdministrators({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatAdministrators",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatAdministrators",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearAllDraftMessages.html).
  //   factory TdlibFunction.clearAllDraftMessages({
  //     bool? exclude_secret_chats,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearAllDraftMessages",
  //         "exclude_secret_chats": exclude_secret_chats,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearAllDraftMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSavedNotificationSound.html).
  //   factory TdlibFunction.getSavedNotificationSound({
  //     int? notification_sound_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSavedNotificationSound",
  //         "notification_sound_id": notification_sound_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSavedNotificationSound",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSavedNotificationSounds.html).
  //   factory TdlibFunction.getSavedNotificationSounds()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSavedNotificationSounds",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSavedNotificationSounds",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addSavedNotificationSound.html).
  //   factory TdlibFunction.addSavedNotificationSound({
  //     InputFile? sound,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addSavedNotificationSound",
  //         "sound": (sound != null)?sound.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addSavedNotificationSound",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeSavedNotificationSound.html).
  //   factory TdlibFunction.removeSavedNotificationSound({
  //     int? notification_sound_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeSavedNotificationSound",
  //         "notification_sound_id": notification_sound_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeSavedNotificationSound",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatNotificationSettingsExceptions.html).
  //   factory TdlibFunction.getChatNotificationSettingsExceptions({
  //     NotificationSettingsScope? scope,
  //     bool? compare_sound,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatNotificationSettingsExceptions",
  //         "scope": (scope != null)?scope.toJson(): null,
  //         "compare_sound": compare_sound,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatNotificationSettingsExceptions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getScopeNotificationSettings.html).
  //   factory TdlibFunction.getScopeNotificationSettings({
  //     NotificationSettingsScope? scope,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getScopeNotificationSettings",
  //         "scope": (scope != null)?scope.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getScopeNotificationSettings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setScopeNotificationSettings.html).
  //   factory TdlibFunction.setScopeNotificationSettings({
  //     NotificationSettingsScope? scope,
  //     ScopeNotificationSettings? notification_settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setScopeNotificationSettings",
  //         "scope": (scope != null)?scope.toJson(): null,
  //         "notification_settings": (notification_settings != null)?notification_settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setScopeNotificationSettings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resetAllNotificationSettings.html).
  //   factory TdlibFunction.resetAllNotificationSettings()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resetAllNotificationSettings",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resetAllNotificationSettings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleChatIsPinned.html).
  //   factory TdlibFunction.toggleChatIsPinned({
  //     ChatList? chat_list,
  //     int? chat_id,
  //     bool? is_pinned,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleChatIsPinned",
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //         "chat_id": chat_id,
  //         "is_pinned": is_pinned,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleChatIsPinned",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setPinnedChats.html).
  //   factory TdlibFunction.setPinnedChats({
  //     ChatList? chat_list,
  //     List<int>? chat_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setPinnedChats",
  //         "chat_list": (chat_list != null)?chat_list.toJson(): null,
  //         "chat_ids": chat_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setPinnedChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAttachmentMenuBot.html).
  //   factory TdlibFunction.getAttachmentMenuBot({
  //     int? bot_user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAttachmentMenuBot",
  //         "bot_user_id": bot_user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAttachmentMenuBot",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleBotIsAddedToAttachmentMenu.html).
  //   factory TdlibFunction.toggleBotIsAddedToAttachmentMenu({
  //     int? bot_user_id,
  //     bool? is_added,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleBotIsAddedToAttachmentMenu",
  //         "bot_user_id": bot_user_id,
  //         "is_added": is_added,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleBotIsAddedToAttachmentMenu",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getThemedEmojiStatuses.html).
  //   factory TdlibFunction.getThemedEmojiStatuses()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getThemedEmojiStatuses",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getThemedEmojiStatuses",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecentEmojiStatuses.html).
  //   factory TdlibFunction.getRecentEmojiStatuses()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecentEmojiStatuses",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecentEmojiStatuses",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getDefaultEmojiStatuses.html).
  //   factory TdlibFunction.getDefaultEmojiStatuses()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getDefaultEmojiStatuses",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getDefaultEmojiStatuses",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearRecentEmojiStatuses.html).
  //   factory TdlibFunction.clearRecentEmojiStatuses()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearRecentEmojiStatuses",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearRecentEmojiStatuses",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1downloadFile.html).
  //   factory TdlibFunction.downloadFile({
  //     int? file_id,
  //     int? priority,
  //     int? offset,
  //     int? limit,
  //     bool? synchronous,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "downloadFile",
  //         "file_id": file_id,
  //         "priority": priority,
  //         "offset": offset,
  //         "limit": limit,
  //         "synchronous": synchronous,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method downloadFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getFileDownloadedPrefixSize.html).
  //   factory TdlibFunction.getFileDownloadedPrefixSize({
  //     int? file_id,
  //     int? offset,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getFileDownloadedPrefixSize",
  //         "file_id": file_id,
  //         "offset": offset,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getFileDownloadedPrefixSize",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cancelDownloadFile.html).
  //   factory TdlibFunction.cancelDownloadFile({
  //     int? file_id,
  //     bool? only_if_pending,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "cancelDownloadFile",
  //         "file_id": file_id,
  //         "only_if_pending": only_if_pending,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method cancelDownloadFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSuggestedFileName.html).
  //   factory TdlibFunction.getSuggestedFileName({
  //     int? file_id,
  //     String? directory,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSuggestedFileName",
  //         "file_id": file_id,
  //         "directory": directory,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSuggestedFileName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1preliminaryUploadFile.html).
  //   factory TdlibFunction.preliminaryUploadFile({
  //     InputFile? file,
  //     FileType? file_type,
  //     int? priority,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "preliminaryUploadFile",
  //         "file": (file != null)?file.toJson(): null,
  //         "file_type": (file_type != null)?file_type.toJson(): null,
  //         "priority": priority,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method preliminaryUploadFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1cancelPreliminaryUploadFile.html).
  //   factory TdlibFunction.cancelPreliminaryUploadFile({
  //     int? file_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "cancelPreliminaryUploadFile",
  //         "file_id": file_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method cancelPreliminaryUploadFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1writeGeneratedFilePart.html).
  //   factory TdlibFunction.writeGeneratedFilePart({
  //     int? generation_id,
  //     int? offset,
  //     String? data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "writeGeneratedFilePart",
  //         "generation_id": generation_id,
  //         "offset": offset,
  //         "data": data,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method writeGeneratedFilePart",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setFileGenerationProgress.html).
  //   factory TdlibFunction.setFileGenerationProgress({
  //     int? generation_id,
  //     int? expected_size,
  //     int? local_prefix_size,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setFileGenerationProgress",
  //         "generation_id": generation_id,
  //         "expected_size": expected_size,
  //         "local_prefix_size": local_prefix_size,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setFileGenerationProgress",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1finishFileGeneration.html).
  //   factory TdlibFunction.finishFileGeneration({
  //     int? generation_id,
  //     Error? error,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "finishFileGeneration",
  //         "generation_id": generation_id,
  //         "error": (error != null)?error.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method finishFileGeneration",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1readFilePart.html).
  //   factory TdlibFunction.readFilePart({
  //     int? file_id,
  //     int? offset,
  //     int? count,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "readFilePart",
  //         "file_id": file_id,
  //         "offset": offset,
  //         "count": count,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method readFilePart",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteFile.html).
  //   factory TdlibFunction.deleteFile({
  //     int? file_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteFile",
  //         "file_id": file_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addFileToDownloads.html).
  //   factory TdlibFunction.addFileToDownloads({
  //     int? file_id,
  //     int? chat_id,
  //     int? message_id,
  //     int? priority,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addFileToDownloads",
  //         "file_id": file_id,
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "priority": priority,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addFileToDownloads",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleDownloadIsPaused.html).
  //   factory TdlibFunction.toggleDownloadIsPaused({
  //     int? file_id,
  //     bool? is_paused,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleDownloadIsPaused",
  //         "file_id": file_id,
  //         "is_paused": is_paused,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleDownloadIsPaused",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleAllDownloadsArePaused.html).
  //   factory TdlibFunction.toggleAllDownloadsArePaused({
  //     bool? are_paused,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleAllDownloadsArePaused",
  //         "are_paused": are_paused,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleAllDownloadsArePaused",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeFileFromDownloads.html).
  //   factory TdlibFunction.removeFileFromDownloads({
  //     int? file_id,
  //     bool? delete_from_cache,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeFileFromDownloads",
  //         "file_id": file_id,
  //         "delete_from_cache": delete_from_cache,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeFileFromDownloads",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeAllFilesFromDownloads.html).
  //   factory TdlibFunction.removeAllFilesFromDownloads({
  //     bool? only_active,
  //     bool? only_completed,
  //     bool? delete_from_cache,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeAllFilesFromDownloads",
  //         "only_active": only_active,
  //         "only_completed": only_completed,
  //         "delete_from_cache": delete_from_cache,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeAllFilesFromDownloads",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchFileDownloads.html).
  //   factory TdlibFunction.searchFileDownloads({
  //     String? query,
  //     bool? only_active,
  //     bool? only_completed,
  //     String? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchFileDownloads",
  //         "query": query,
  //         "only_active": only_active,
  //         "only_completed": only_completed,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchFileDownloads",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageFileType.html).
  //   factory TdlibFunction.getMessageFileType({
  //     String? message_file_head,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageFileType",
  //         "message_file_head": message_file_head,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageFileType",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageImportConfirmationText.html).
  //   factory TdlibFunction.getMessageImportConfirmationText({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageImportConfirmationText",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageImportConfirmationText",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1importMessages.html).
  //   factory TdlibFunction.importMessages({
  //     int? chat_id,
  //     InputFile? message_file,
  //     List<InputFile>? attached_files,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "importMessages",
  //         "chat_id": chat_id,
  //         "message_file": (message_file != null)?message_file.toJson(): null,
  //         "attached_files": (attached_files != null)?attached_files.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method importMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1replacePrimaryChatInviteLink.html).
  //   factory TdlibFunction.replacePrimaryChatInviteLink({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "replacePrimaryChatInviteLink",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method replacePrimaryChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createChatInviteLink.html).
  //   factory TdlibFunction.createChatInviteLink({
  //     int? chat_id,
  //     String? name,
  //     int? expiration_date,
  //     int? member_limit,
  //     bool? creates_join_request,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createChatInviteLink",
  //         "chat_id": chat_id,
  //         "name": name,
  //         "expiration_date": expiration_date,
  //         "member_limit": member_limit,
  //         "creates_join_request": creates_join_request,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editChatInviteLink.html).
  //   factory TdlibFunction.editChatInviteLink({
  //     int? chat_id,
  //     String? invite_link,
  //     String? name,
  //     int? expiration_date,
  //     int? member_limit,
  //     bool? creates_join_request,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editChatInviteLink",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //         "name": name,
  //         "expiration_date": expiration_date,
  //         "member_limit": member_limit,
  //         "creates_join_request": creates_join_request,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatInviteLink.html).
  //   factory TdlibFunction.getChatInviteLink({
  //     int? chat_id,
  //     String? invite_link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatInviteLink",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatInviteLinkCounts.html).
  //   factory TdlibFunction.getChatInviteLinkCounts({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatInviteLinkCounts",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatInviteLinkCounts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatInviteLinks.html).
  //   factory TdlibFunction.getChatInviteLinks({
  //     int? chat_id,
  //     int? creator_user_id,
  //     bool? is_revoked,
  //     int? offset_date,
  //     String? offset_invite_link,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatInviteLinks",
  //         "chat_id": chat_id,
  //         "creator_user_id": creator_user_id,
  //         "is_revoked": is_revoked,
  //         "offset_date": offset_date,
  //         "offset_invite_link": offset_invite_link,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatInviteLinks",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatInviteLinkMembers.html).
  //   factory TdlibFunction.getChatInviteLinkMembers({
  //     int? chat_id,
  //     String? invite_link,
  //     ChatInviteLinkMember? offset_member,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatInviteLinkMembers",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //         "offset_member": (offset_member != null)?offset_member.toJson(): null,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatInviteLinkMembers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1revokeChatInviteLink.html).
  //   factory TdlibFunction.revokeChatInviteLink({
  //     int? chat_id,
  //     String? invite_link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "revokeChatInviteLink",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method revokeChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteRevokedChatInviteLink.html).
  //   factory TdlibFunction.deleteRevokedChatInviteLink({
  //     int? chat_id,
  //     String? invite_link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteRevokedChatInviteLink",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteRevokedChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteAllRevokedChatInviteLinks.html).
  //   factory TdlibFunction.deleteAllRevokedChatInviteLinks({
  //     int? chat_id,
  //     int? creator_user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteAllRevokedChatInviteLinks",
  //         "chat_id": chat_id,
  //         "creator_user_id": creator_user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteAllRevokedChatInviteLinks",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkChatInviteLink.html).
  //   factory TdlibFunction.checkChatInviteLink({
  //     String? invite_link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkChatInviteLink",
  //         "invite_link": invite_link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkChatInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1joinChatByInviteLink.html).
  //   factory TdlibFunction.joinChatByInviteLink({
  //     String? invite_link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "joinChatByInviteLink",
  //         "invite_link": invite_link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method joinChatByInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatJoinRequests.html).
  //   factory TdlibFunction.getChatJoinRequests({
  //     int? chat_id,
  //     String? invite_link,
  //     String? query,
  //     ChatJoinRequest? offset_request,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatJoinRequests",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //         "query": query,
  //         "offset_request": (offset_request != null)?offset_request.toJson(): null,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatJoinRequests",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1processChatJoinRequest.html).
  //   factory TdlibFunction.processChatJoinRequest({
  //     int? chat_id,
  //     int? user_id,
  //     bool? approve,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "processChatJoinRequest",
  //         "chat_id": chat_id,
  //         "user_id": user_id,
  //         "approve": approve,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method processChatJoinRequest",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1processChatJoinRequests.html).
  //   factory TdlibFunction.processChatJoinRequests({
  //     int? chat_id,
  //     String? invite_link,
  //     bool? approve,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "processChatJoinRequests",
  //         "chat_id": chat_id,
  //         "invite_link": invite_link,
  //         "approve": approve,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method processChatJoinRequests",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createCall.html).
  //   factory TdlibFunction.createCall({
  //     int? user_id,
  //     CallProtocol? protocol,
  //     bool? is_video,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createCall",
  //         "user_id": user_id,
  //         "protocol": (protocol != null)?protocol.toJson(): null,
  //         "is_video": is_video,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1acceptCall.html).
  //   factory TdlibFunction.acceptCall({
  //     int? call_id,
  //     CallProtocol? protocol,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "acceptCall",
  //         "call_id": call_id,
  //         "protocol": (protocol != null)?protocol.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method acceptCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendCallSignalingData.html).
  //   factory TdlibFunction.sendCallSignalingData({
  //     int? call_id,
  //     String? data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendCallSignalingData",
  //         "call_id": call_id,
  //         "data": data,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendCallSignalingData",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1discardCall.html).
  //   factory TdlibFunction.discardCall({
  //     int? call_id,
  //     bool? is_disconnected,
  //     int? duration,
  //     bool? is_video,
  //     int? connection_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "discardCall",
  //         "call_id": call_id,
  //         "is_disconnected": is_disconnected,
  //         "duration": duration,
  //         "is_video": is_video,
  //         "connection_id": connection_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method discardCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendCallRating.html).
  //   factory TdlibFunction.sendCallRating({
  //     int? call_id,
  //     int? rating,
  //     String? comment,
  //     List<CallProblem>? problems,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendCallRating",
  //         "call_id": call_id,
  //         "rating": rating,
  //         "comment": comment,
  //         "problems": (problems != null)?problems.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendCallRating",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendCallDebugInformation.html).
  //   factory TdlibFunction.sendCallDebugInformation({
  //     int? call_id,
  //     String? debug_information,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendCallDebugInformation",
  //         "call_id": call_id,
  //         "debug_information": debug_information,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendCallDebugInformation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendCallLog.html).
  //   factory TdlibFunction.sendCallLog({
  //     int? call_id,
  //     InputFile? log_file,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendCallLog",
  //         "call_id": call_id,
  //         "log_file": (log_file != null)?log_file.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendCallLog",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getVideoChatAvailableParticipants.html).
  //   factory TdlibFunction.getVideoChatAvailableParticipants({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getVideoChatAvailableParticipants",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getVideoChatAvailableParticipants",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setVideoChatDefaultParticipant.html).
  //   factory TdlibFunction.setVideoChatDefaultParticipant({
  //     int? chat_id,
  //     MessageSender? default_participant_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setVideoChatDefaultParticipant",
  //         "chat_id": chat_id,
  //         "default_participant_id": (default_participant_id != null)?default_participant_id.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setVideoChatDefaultParticipant",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createVideoChat.html).
  //   factory TdlibFunction.createVideoChat({
  //     int? chat_id,
  //     String? title,
  //     int? start_date,
  //     bool? is_rtmp_stream,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createVideoChat",
  //         "chat_id": chat_id,
  //         "title": title,
  //         "start_date": start_date,
  //         "is_rtmp_stream": is_rtmp_stream,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createVideoChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getVideoChatRtmpUrl.html).
  //   factory TdlibFunction.getVideoChatRtmpUrl({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getVideoChatRtmpUrl",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getVideoChatRtmpUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1replaceVideoChatRtmpUrl.html).
  //   factory TdlibFunction.replaceVideoChatRtmpUrl({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "replaceVideoChatRtmpUrl",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method replaceVideoChatRtmpUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGroupCall.html).
  //   factory TdlibFunction.getGroupCall({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGroupCall",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGroupCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1startScheduledGroupCall.html).
  //   factory TdlibFunction.startScheduledGroupCall({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "startScheduledGroupCall",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method startScheduledGroupCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallEnabledStartNotification.html).
  //   factory TdlibFunction.toggleGroupCallEnabledStartNotification({
  //     int? group_call_id,
  //     bool? enabled_start_notification,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallEnabledStartNotification",
  //         "group_call_id": group_call_id,
  //         "enabled_start_notification": enabled_start_notification,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallEnabledStartNotification",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1joinGroupCall.html).
  //   factory TdlibFunction.joinGroupCall({
  //     int? group_call_id,
  //     MessageSender? participant_id,
  //     int? audio_source_id,
  //     String? payload,
  //     bool? is_muted,
  //     bool? is_my_video_enabled,
  //     String? invite_hash,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "joinGroupCall",
  //         "group_call_id": group_call_id,
  //         "participant_id": (participant_id != null)?participant_id.toJson(): null,
  //         "audio_source_id": audio_source_id,
  //         "payload": payload,
  //         "is_muted": is_muted,
  //         "is_my_video_enabled": is_my_video_enabled,
  //         "invite_hash": invite_hash,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method joinGroupCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1startGroupCallScreenSharing.html).
  //   factory TdlibFunction.startGroupCallScreenSharing({
  //     int? group_call_id,
  //     int? audio_source_id,
  //     String? payload,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "startGroupCallScreenSharing",
  //         "group_call_id": group_call_id,
  //         "audio_source_id": audio_source_id,
  //         "payload": payload,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method startGroupCallScreenSharing",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallScreenSharingIsPaused.html).
  //   factory TdlibFunction.toggleGroupCallScreenSharingIsPaused({
  //     int? group_call_id,
  //     bool? is_paused,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallScreenSharingIsPaused",
  //         "group_call_id": group_call_id,
  //         "is_paused": is_paused,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallScreenSharingIsPaused",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1endGroupCallScreenSharing.html).
  //   factory TdlibFunction.endGroupCallScreenSharing({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "endGroupCallScreenSharing",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method endGroupCallScreenSharing",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setGroupCallTitle.html).
  //   factory TdlibFunction.setGroupCallTitle({
  //     int? group_call_id,
  //     String? title,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setGroupCallTitle",
  //         "group_call_id": group_call_id,
  //         "title": title,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setGroupCallTitle",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallMuteNewParticipants.html).
  //   factory TdlibFunction.toggleGroupCallMuteNewParticipants({
  //     int? group_call_id,
  //     bool? mute_new_participants,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallMuteNewParticipants",
  //         "group_call_id": group_call_id,
  //         "mute_new_participants": mute_new_participants,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallMuteNewParticipants",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1inviteGroupCallParticipants.html).
  //   factory TdlibFunction.inviteGroupCallParticipants({
  //     int? group_call_id,
  //     List<int>? user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "inviteGroupCallParticipants",
  //         "group_call_id": group_call_id,
  //         "user_ids": user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method inviteGroupCallParticipants",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGroupCallInviteLink.html).
  //   factory TdlibFunction.getGroupCallInviteLink({
  //     int? group_call_id,
  //     bool? can_self_unmute,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGroupCallInviteLink",
  //         "group_call_id": group_call_id,
  //         "can_self_unmute": can_self_unmute,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGroupCallInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1revokeGroupCallInviteLink.html).
  //   factory TdlibFunction.revokeGroupCallInviteLink({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "revokeGroupCallInviteLink",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method revokeGroupCallInviteLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1startGroupCallRecording.html).
  //   factory TdlibFunction.startGroupCallRecording({
  //     int? group_call_id,
  //     String? title,
  //     bool? record_video,
  //     bool? use_portrait_orientation,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "startGroupCallRecording",
  //         "group_call_id": group_call_id,
  //         "title": title,
  //         "record_video": record_video,
  //         "use_portrait_orientation": use_portrait_orientation,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method startGroupCallRecording",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1endGroupCallRecording.html).
  //   factory TdlibFunction.endGroupCallRecording({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "endGroupCallRecording",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method endGroupCallRecording",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallIsMyVideoPaused.html).
  //   factory TdlibFunction.toggleGroupCallIsMyVideoPaused({
  //     int? group_call_id,
  //     bool? is_my_video_paused,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallIsMyVideoPaused",
  //         "group_call_id": group_call_id,
  //         "is_my_video_paused": is_my_video_paused,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallIsMyVideoPaused",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallIsMyVideoEnabled.html).
  //   factory TdlibFunction.toggleGroupCallIsMyVideoEnabled({
  //     int? group_call_id,
  //     bool? is_my_video_enabled,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallIsMyVideoEnabled",
  //         "group_call_id": group_call_id,
  //         "is_my_video_enabled": is_my_video_enabled,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallIsMyVideoEnabled",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setGroupCallParticipantIsSpeaking.html).
  //   factory TdlibFunction.setGroupCallParticipantIsSpeaking({
  //     int? group_call_id,
  //     int? audio_source,
  //     bool? is_speaking,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setGroupCallParticipantIsSpeaking",
  //         "group_call_id": group_call_id,
  //         "audio_source": audio_source,
  //         "is_speaking": is_speaking,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setGroupCallParticipantIsSpeaking",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallParticipantIsMuted.html).
  //   factory TdlibFunction.toggleGroupCallParticipantIsMuted({
  //     int? group_call_id,
  //     MessageSender? participant_id,
  //     bool? is_muted,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallParticipantIsMuted",
  //         "group_call_id": group_call_id,
  //         "participant_id": (participant_id != null)?participant_id.toJson(): null,
  //         "is_muted": is_muted,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallParticipantIsMuted",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setGroupCallParticipantVolumeLevel.html).
  //   factory TdlibFunction.setGroupCallParticipantVolumeLevel({
  //     int? group_call_id,
  //     MessageSender? participant_id,
  //     int? volume_level,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setGroupCallParticipantVolumeLevel",
  //         "group_call_id": group_call_id,
  //         "participant_id": (participant_id != null)?participant_id.toJson(): null,
  //         "volume_level": volume_level,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setGroupCallParticipantVolumeLevel",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleGroupCallParticipantIsHandRaised.html).
  //   factory TdlibFunction.toggleGroupCallParticipantIsHandRaised({
  //     int? group_call_id,
  //     MessageSender? participant_id,
  //     bool? is_hand_raised,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleGroupCallParticipantIsHandRaised",
  //         "group_call_id": group_call_id,
  //         "participant_id": (participant_id != null)?participant_id.toJson(): null,
  //         "is_hand_raised": is_hand_raised,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleGroupCallParticipantIsHandRaised",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1loadGroupCallParticipants.html).
  //   factory TdlibFunction.loadGroupCallParticipants({
  //     int? group_call_id,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "loadGroupCallParticipants",
  //         "group_call_id": group_call_id,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method loadGroupCallParticipants",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1leaveGroupCall.html).
  //   factory TdlibFunction.leaveGroupCall({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "leaveGroupCall",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method leaveGroupCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1endGroupCall.html).
  //   factory TdlibFunction.endGroupCall({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "endGroupCall",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method endGroupCall",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGroupCallStreams.html).
  //   factory TdlibFunction.getGroupCallStreams({
  //     int? group_call_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGroupCallStreams",
  //         "group_call_id": group_call_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGroupCallStreams",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getGroupCallStreamSegment.html).
  //   factory TdlibFunction.getGroupCallStreamSegment({
  //     int? group_call_id,
  //     int? time_offset,
  //     int? scale,
  //     int? channel_id,
  //     GroupCallVideoQuality? video_quality,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getGroupCallStreamSegment",
  //         "group_call_id": group_call_id,
  //         "time_offset": time_offset,
  //         "scale": scale,
  //         "channel_id": channel_id,
  //         "video_quality": (video_quality != null)?video_quality.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getGroupCallStreamSegment",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleMessageSenderIsBlocked.html).
  //   factory TdlibFunction.toggleMessageSenderIsBlocked({
  //     MessageSender? sender_id,
  //     bool? is_blocked,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleMessageSenderIsBlocked",
  //         "sender_id": (sender_id != null)?sender_id.toJson(): null,
  //         "is_blocked": is_blocked,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleMessageSenderIsBlocked",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1blockMessageSenderFromReplies.html).
  //   factory TdlibFunction.blockMessageSenderFromReplies({
  //     int? message_id,
  //     bool? delete_message,
  //     bool? delete_all_messages,
  //     bool? report_spam,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "blockMessageSenderFromReplies",
  //         "message_id": message_id,
  //         "delete_message": delete_message,
  //         "delete_all_messages": delete_all_messages,
  //         "report_spam": report_spam,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method blockMessageSenderFromReplies",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBlockedMessageSenders.html).
  //   factory TdlibFunction.getBlockedMessageSenders({
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBlockedMessageSenders",
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBlockedMessageSenders",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addContact.html).
  //   factory TdlibFunction.addContact({
  //     Contact? contact,
  //     bool? share_phone_number,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addContact",
  //         "contact": (contact != null)?contact.toJson(): null,
  //         "share_phone_number": share_phone_number,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addContact",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1importContacts.html).
  //   factory TdlibFunction.importContacts({
  //     List<Contact>? contacts,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "importContacts",
  //         "contacts": (contacts != null)?contacts.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method importContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getContacts.html).
  //   factory TdlibFunction.getContacts()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getContacts",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchContacts.html).
  //   factory TdlibFunction.searchContacts({
  //     String? query,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchContacts",
  //         "query": query,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeContacts.html).
  //   factory TdlibFunction.removeContacts({
  //     List<int>? user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeContacts",
  //         "user_ids": user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getImportedContactCount.html).
  //   factory TdlibFunction.getImportedContactCount()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getImportedContactCount",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getImportedContactCount",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1changeImportedContacts.html).
  //   factory TdlibFunction.changeImportedContacts({
  //     List<Contact>? contacts,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "changeImportedContacts",
  //         "contacts": (contacts != null)?contacts.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method changeImportedContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearImportedContacts.html).
  //   factory TdlibFunction.clearImportedContacts()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearImportedContacts",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearImportedContacts",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchUserByPhoneNumber.html).
  //   factory TdlibFunction.searchUserByPhoneNumber({
  //     String? phone_number,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchUserByPhoneNumber",
  //         "phone_number": phone_number,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchUserByPhoneNumber",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sharePhoneNumber.html).
  //   factory TdlibFunction.sharePhoneNumber({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sharePhoneNumber",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sharePhoneNumber",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getUserProfilePhotos.html).
  //   factory TdlibFunction.getUserProfilePhotos({
  //     int? user_id,
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getUserProfilePhotos",
  //         "user_id": user_id,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getUserProfilePhotos",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStickers.html).
  //   factory TdlibFunction.getStickers({
  //     StickerType? sticker_type,
  //     String? query,
  //     int? limit,
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStickers",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "query": query,
  //         "limit": limit,
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchStickers.html).
  //   factory TdlibFunction.searchStickers({
  //     String? emoji,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchStickers",
  //         "emoji": emoji,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPremiumStickers.html).
  //   factory TdlibFunction.getPremiumStickers({
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPremiumStickers",
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPremiumStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getInstalledStickerSets.html).
  //   factory TdlibFunction.getInstalledStickerSets({
  //     StickerType? sticker_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getInstalledStickerSets",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getInstalledStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getArchivedStickerSets.html).
  //   factory TdlibFunction.getArchivedStickerSets({
  //     StickerType? sticker_type,
  //     int? offset_sticker_set_id,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getArchivedStickerSets",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "offset_sticker_set_id": offset_sticker_set_id,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getArchivedStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getTrendingStickerSets.html).
  //   factory TdlibFunction.getTrendingStickerSets({
  //     StickerType? sticker_type,
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getTrendingStickerSets",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getTrendingStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAttachedStickerSets.html).
  //   factory TdlibFunction.getAttachedStickerSets({
  //     int? file_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAttachedStickerSets",
  //         "file_id": file_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAttachedStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStickerSet.html).
  //   factory TdlibFunction.getStickerSet({
  //     int? set_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStickerSet",
  //         "set_id": set_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStickerSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchStickerSet.html).
  //   factory TdlibFunction.searchStickerSet({
  //     String? name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchStickerSet",
  //         "name": name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchStickerSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchInstalledStickerSets.html).
  //   factory TdlibFunction.searchInstalledStickerSets({
  //     StickerType? sticker_type,
  //     String? query,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchInstalledStickerSets",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "query": query,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchInstalledStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchStickerSets.html).
  //   factory TdlibFunction.searchStickerSets({
  //     String? query,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchStickerSets",
  //         "query": query,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1changeStickerSet.html).
  //   factory TdlibFunction.changeStickerSet({
  //     int? set_id,
  //     bool? is_installed,
  //     bool? is_archived,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "changeStickerSet",
  //         "set_id": set_id,
  //         "is_installed": is_installed,
  //         "is_archived": is_archived,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method changeStickerSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1viewTrendingStickerSets.html).
  //   factory TdlibFunction.viewTrendingStickerSets({
  //     List<int>? sticker_set_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "viewTrendingStickerSets",
  //         "sticker_set_ids": sticker_set_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method viewTrendingStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reorderInstalledStickerSets.html).
  //   factory TdlibFunction.reorderInstalledStickerSets({
  //     StickerType? sticker_type,
  //     List<int>? sticker_set_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reorderInstalledStickerSets",
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "sticker_set_ids": sticker_set_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reorderInstalledStickerSets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecentStickers.html).
  //   factory TdlibFunction.getRecentStickers({
  //     bool? is_attached,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecentStickers",
  //         "is_attached": is_attached,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecentStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addRecentSticker.html).
  //   factory TdlibFunction.addRecentSticker({
  //     bool? is_attached,
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addRecentSticker",
  //         "is_attached": is_attached,
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addRecentSticker",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeRecentSticker.html).
  //   factory TdlibFunction.removeRecentSticker({
  //     bool? is_attached,
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeRecentSticker",
  //         "is_attached": is_attached,
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeRecentSticker",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clearRecentStickers.html).
  //   factory TdlibFunction.clearRecentStickers({
  //     bool? is_attached,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clearRecentStickers",
  //         "is_attached": is_attached,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clearRecentStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getFavoriteStickers.html).
  //   factory TdlibFunction.getFavoriteStickers()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getFavoriteStickers",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getFavoriteStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addFavoriteSticker.html).
  //   factory TdlibFunction.addFavoriteSticker({
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addFavoriteSticker",
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addFavoriteSticker",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeFavoriteSticker.html).
  //   factory TdlibFunction.removeFavoriteSticker({
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeFavoriteSticker",
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeFavoriteSticker",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStickerEmojis.html).
  //   factory TdlibFunction.getStickerEmojis({
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStickerEmojis",
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStickerEmojis",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchEmojis.html).
  //   factory TdlibFunction.searchEmojis({
  //     String? text,
  //     bool? exact_match,
  //     List<String>? input_language_codes,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchEmojis",
  //         "text": text,
  //         "exact_match": exact_match,
  //         "input_language_codes": input_language_codes,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchEmojis",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAnimatedEmoji.html).
  //   factory TdlibFunction.getAnimatedEmoji({
  //     String? emoji,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAnimatedEmoji",
  //         "emoji": emoji,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAnimatedEmoji",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getEmojiSuggestionsUrl.html).
  //   factory TdlibFunction.getEmojiSuggestionsUrl({
  //     String? language_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getEmojiSuggestionsUrl",
  //         "language_code": language_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getEmojiSuggestionsUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCustomEmojiStickers.html).
  //   factory TdlibFunction.getCustomEmojiStickers({
  //     List<int>? custom_emoji_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCustomEmojiStickers",
  //         "custom_emoji_ids": custom_emoji_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCustomEmojiStickers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSavedAnimations.html).
  //   factory TdlibFunction.getSavedAnimations()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSavedAnimations",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSavedAnimations",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addSavedAnimation.html).
  //   factory TdlibFunction.addSavedAnimation({
  //     InputFile? animation,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addSavedAnimation",
  //         "animation": (animation != null)?animation.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addSavedAnimation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeSavedAnimation.html).
  //   factory TdlibFunction.removeSavedAnimation({
  //     InputFile? animation,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeSavedAnimation",
  //         "animation": (animation != null)?animation.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeSavedAnimation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecentInlineBots.html).
  //   factory TdlibFunction.getRecentInlineBots()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecentInlineBots",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecentInlineBots",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchHashtags.html).
  //   factory TdlibFunction.searchHashtags({
  //     String? prefix,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchHashtags",
  //         "prefix": prefix,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchHashtags",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeRecentHashtag.html).
  //   factory TdlibFunction.removeRecentHashtag({
  //     String? hashtag,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeRecentHashtag",
  //         "hashtag": hashtag,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeRecentHashtag",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getWebPagePreview.html).
  //   factory TdlibFunction.getWebPagePreview({
  //     FormattedText? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getWebPagePreview",
  //         "text": (text != null)?text.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getWebPagePreview",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getWebPageInstantView.html).
  //   factory TdlibFunction.getWebPageInstantView({
  //     String? url,
  //     bool? force_full,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getWebPageInstantView",
  //         "url": url,
  //         "force_full": force_full,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getWebPageInstantView",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setProfilePhoto.html).
  //   factory TdlibFunction.setProfilePhoto({
  //     InputChatPhoto? photo,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setProfilePhoto",
  //         "photo": (photo != null)?photo.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setProfilePhoto",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteProfilePhoto.html).
  //   factory TdlibFunction.deleteProfilePhoto({
  //     int? profile_photo_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteProfilePhoto",
  //         "profile_photo_id": profile_photo_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteProfilePhoto",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setName.html).
  //   factory TdlibFunction.setName({
  //     String? first_name,
  //     String? last_name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setName",
  //         "first_name": first_name,
  //         "last_name": last_name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setBio.html).
  //   factory TdlibFunction.setBio({
  //     String? bio,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setBio",
  //         "bio": bio,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setBio",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setUsername.html).
  //   factory TdlibFunction.setUsername({
  //     String? username,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setUsername",
  //         "username": username,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setUsername",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setEmojiStatus.html).
  //   factory TdlibFunction.setEmojiStatus({
  //     EmojiStatus? emoji_status,
  //     int? duration,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setEmojiStatus",
  //         "emoji_status": (emoji_status != null)?emoji_status.toJson(): null,
  //         "duration": duration,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setEmojiStatus",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setLocation.html).
  //   factory TdlibFunction.setLocation({
  //     Location? location,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setLocation",
  //         "location": (location != null)?location.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setLocation",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1changePhoneNumber.html).
  //   factory TdlibFunction.changePhoneNumber({
  //     String? phone_number,
  //     PhoneNumberAuthenticationSettings? settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "changePhoneNumber",
  //         "phone_number": phone_number,
  //         "settings": (settings != null)?settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method changePhoneNumber",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendChangePhoneNumberCode.html).
  //   factory TdlibFunction.resendChangePhoneNumberCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendChangePhoneNumberCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendChangePhoneNumberCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkChangePhoneNumberCode.html).
  //   factory TdlibFunction.checkChangePhoneNumberCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkChangePhoneNumberCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkChangePhoneNumberCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setCommands.html).
  //   factory TdlibFunction.setCommands({
  //     BotCommandScope? scope,
  //     String? language_code,
  //     List<BotCommand>? commands,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setCommands",
  //         "scope": (scope != null)?scope.toJson(): null,
  //         "language_code": language_code,
  //         "commands": (commands != null)?commands.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setCommands",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteCommands.html).
  //   factory TdlibFunction.deleteCommands({
  //     BotCommandScope? scope,
  //     String? language_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteCommands",
  //         "scope": (scope != null)?scope.toJson(): null,
  //         "language_code": language_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteCommands",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCommands.html).
  //   factory TdlibFunction.getCommands({
  //     BotCommandScope? scope,
  //     String? language_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCommands",
  //         "scope": (scope != null)?scope.toJson(): null,
  //         "language_code": language_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCommands",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setMenuButton.html).
  //   factory TdlibFunction.setMenuButton({
  //     int? user_id,
  //     BotMenuButton? menu_button,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setMenuButton",
  //         "user_id": user_id,
  //         "menu_button": (menu_button != null)?menu_button.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setMenuButton",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMenuButton.html).
  //   factory TdlibFunction.getMenuButton({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMenuButton",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMenuButton",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setDefaultGroupAdministratorRights.html).
  //   factory TdlibFunction.setDefaultGroupAdministratorRights({
  //     ChatAdministratorRights? default_group_administrator_rights,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setDefaultGroupAdministratorRights",
  //         "default_group_administrator_rights": (default_group_administrator_rights != null)?default_group_administrator_rights.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setDefaultGroupAdministratorRights",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setDefaultChannelAdministratorRights.html).
  //   factory TdlibFunction.setDefaultChannelAdministratorRights({
  //     ChatAdministratorRights? default_channel_administrator_rights,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setDefaultChannelAdministratorRights",
  //         "default_channel_administrator_rights": (default_channel_administrator_rights != null)?default_channel_administrator_rights.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setDefaultChannelAdministratorRights",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getActiveSessions.html).
  //   factory TdlibFunction.getActiveSessions()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getActiveSessions",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getActiveSessions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terminateSession.html).
  //   factory TdlibFunction.terminateSession({
  //     int? session_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "terminateSession",
  //         "session_id": session_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method terminateSession",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1terminateAllOtherSessions.html).
  //   factory TdlibFunction.terminateAllOtherSessions()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "terminateAllOtherSessions",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method terminateAllOtherSessions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSessionCanAcceptCalls.html).
  //   factory TdlibFunction.toggleSessionCanAcceptCalls({
  //     int? session_id,
  //     bool? can_accept_calls,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSessionCanAcceptCalls",
  //         "session_id": session_id,
  //         "can_accept_calls": can_accept_calls,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSessionCanAcceptCalls",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSessionCanAcceptSecretChats.html).
  //   factory TdlibFunction.toggleSessionCanAcceptSecretChats({
  //     int? session_id,
  //     bool? can_accept_secret_chats,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSessionCanAcceptSecretChats",
  //         "session_id": session_id,
  //         "can_accept_secret_chats": can_accept_secret_chats,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSessionCanAcceptSecretChats",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setInactiveSessionTtl.html).
  //   factory TdlibFunction.setInactiveSessionTtl({
  //     int? inactive_session_ttl_days,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setInactiveSessionTtl",
  //         "inactive_session_ttl_days": inactive_session_ttl_days,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setInactiveSessionTtl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getConnectedWebsites.html).
  //   factory TdlibFunction.getConnectedWebsites()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getConnectedWebsites",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getConnectedWebsites",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disconnectWebsite.html).
  //   factory TdlibFunction.disconnectWebsite({
  //     int? website_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "disconnectWebsite",
  //         "website_id": website_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method disconnectWebsite",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disconnectAllWebsites.html).
  //   factory TdlibFunction.disconnectAllWebsites()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "disconnectAllWebsites",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method disconnectAllWebsites",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setSupergroupUsername.html).
  //   factory TdlibFunction.setSupergroupUsername({
  //     int? supergroup_id,
  //     String? username,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setSupergroupUsername",
  //         "supergroup_id": supergroup_id,
  //         "username": username,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setSupergroupUsername",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setSupergroupStickerSet.html).
  //   factory TdlibFunction.setSupergroupStickerSet({
  //     int? supergroup_id,
  //     int? sticker_set_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setSupergroupStickerSet",
  //         "supergroup_id": supergroup_id,
  //         "sticker_set_id": sticker_set_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setSupergroupStickerSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSupergroupSignMessages.html).
  //   factory TdlibFunction.toggleSupergroupSignMessages({
  //     int? supergroup_id,
  //     bool? sign_messages,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSupergroupSignMessages",
  //         "supergroup_id": supergroup_id,
  //         "sign_messages": sign_messages,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSupergroupSignMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSupergroupJoinToSendMessages.html).
  //   factory TdlibFunction.toggleSupergroupJoinToSendMessages({
  //     int? supergroup_id,
  //     bool? join_to_send_messages,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSupergroupJoinToSendMessages",
  //         "supergroup_id": supergroup_id,
  //         "join_to_send_messages": join_to_send_messages,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSupergroupJoinToSendMessages",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSupergroupJoinByRequest.html).
  //   factory TdlibFunction.toggleSupergroupJoinByRequest({
  //     int? supergroup_id,
  //     bool? join_by_request,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSupergroupJoinByRequest",
  //         "supergroup_id": supergroup_id,
  //         "join_by_request": join_by_request,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSupergroupJoinByRequest",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSupergroupIsAllHistoryAvailable.html).
  //   factory TdlibFunction.toggleSupergroupIsAllHistoryAvailable({
  //     int? supergroup_id,
  //     bool? is_all_history_available,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSupergroupIsAllHistoryAvailable",
  //         "supergroup_id": supergroup_id,
  //         "is_all_history_available": is_all_history_available,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSupergroupIsAllHistoryAvailable",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1toggleSupergroupIsBroadcastGroup.html).
  //   factory TdlibFunction.toggleSupergroupIsBroadcastGroup({
  //     int? supergroup_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "toggleSupergroupIsBroadcastGroup",
  //         "supergroup_id": supergroup_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method toggleSupergroupIsBroadcastGroup",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reportSupergroupSpam.html).
  //   factory TdlibFunction.reportSupergroupSpam({
  //     int? supergroup_id,
  //     List<int>? message_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reportSupergroupSpam",
  //         "supergroup_id": supergroup_id,
  //         "message_ids": message_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reportSupergroupSpam",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSupergroupMembers.html).
  //   factory TdlibFunction.getSupergroupMembers({
  //     int? supergroup_id,
  //     SupergroupMembersFilter? filter,
  //     int? offset,
  //     int? limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSupergroupMembers",
  //         "supergroup_id": supergroup_id,
  //         "filter": (filter != null)?filter.toJson(): null,
  //         "offset": offset,
  //         "limit": limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSupergroupMembers",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1closeSecretChat.html).
  //   factory TdlibFunction.closeSecretChat({
  //     int? secret_chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "closeSecretChat",
  //         "secret_chat_id": secret_chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method closeSecretChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatEventLog.html).
  //   factory TdlibFunction.getChatEventLog({
  //     int? chat_id,
  //     String? query,
  //     int? from_event_id,
  //     int? limit,
  //     ChatEventLogFilters? filters,
  //     List<int>? user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatEventLog",
  //         "chat_id": chat_id,
  //         "query": query,
  //         "from_event_id": from_event_id,
  //         "limit": limit,
  //         "filters": (filters != null)?filters.toJson(): null,
  //         "user_ids": user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatEventLog",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPaymentForm.html).
  //   factory TdlibFunction.getPaymentForm({
  //     InputInvoice? input_invoice,
  //     ThemeParameters? theme,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPaymentForm",
  //         "input_invoice": (input_invoice != null)?input_invoice.toJson(): null,
  //         "theme": (theme != null)?theme.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPaymentForm",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1validateOrderInfo.html).
  //   factory TdlibFunction.validateOrderInfo({
  //     InputInvoice? input_invoice,
  //     OrderInfo? order_info,
  //     bool? allow_save,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "validateOrderInfo",
  //         "input_invoice": (input_invoice != null)?input_invoice.toJson(): null,
  //         "order_info": (order_info != null)?order_info.toJson(): null,
  //         "allow_save": allow_save,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method validateOrderInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendPaymentForm.html).
  //   factory TdlibFunction.sendPaymentForm({
  //     InputInvoice? input_invoice,
  //     int? payment_form_id,
  //     String? order_info_id,
  //     String? shipping_option_id,
  //     InputCredentials? credentials,
  //     int? tip_amount,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendPaymentForm",
  //         "input_invoice": (input_invoice != null)?input_invoice.toJson(): null,
  //         "payment_form_id": payment_form_id,
  //         "order_info_id": order_info_id,
  //         "shipping_option_id": shipping_option_id,
  //         "credentials": (credentials != null)?credentials.toJson(): null,
  //         "tip_amount": tip_amount,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendPaymentForm",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPaymentReceipt.html).
  //   factory TdlibFunction.getPaymentReceipt({
  //     int? chat_id,
  //     int? message_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPaymentReceipt",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPaymentReceipt",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSavedOrderInfo.html).
  //   factory TdlibFunction.getSavedOrderInfo()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSavedOrderInfo",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSavedOrderInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteSavedOrderInfo.html).
  //   factory TdlibFunction.deleteSavedOrderInfo()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteSavedOrderInfo",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteSavedOrderInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteSavedCredentials.html).
  //   factory TdlibFunction.deleteSavedCredentials()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteSavedCredentials",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteSavedCredentials",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createInvoiceLink.html).
  //   factory TdlibFunction.createInvoiceLink({
  //     InputMessageContent? invoice,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createInvoiceLink",
  //         "invoice": (invoice != null)?invoice.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createInvoiceLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSupportUser.html).
  //   factory TdlibFunction.getSupportUser()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSupportUser",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSupportUser",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBackgrounds.html).
  //   factory TdlibFunction.getBackgrounds({
  //     bool? for_dark_theme,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBackgrounds",
  //         "for_dark_theme": for_dark_theme,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBackgrounds",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBackgroundUrl.html).
  //   factory TdlibFunction.getBackgroundUrl({
  //     String? name,
  //     BackgroundType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBackgroundUrl",
  //         "name": name,
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBackgroundUrl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1searchBackground.html).
  //   factory TdlibFunction.searchBackground({
  //     String? name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "searchBackground",
  //         "name": name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method searchBackground",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setBackground.html).
  //   factory TdlibFunction.setBackground({
  //     InputBackground? background,
  //     BackgroundType? type,
  //     bool? for_dark_theme,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setBackground",
  //         "background": (background != null)?background.toJson(): null,
  //         "type": (type != null)?type.toJson(): null,
  //         "for_dark_theme": for_dark_theme,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setBackground",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeBackground.html).
  //   factory TdlibFunction.removeBackground({
  //     int? background_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeBackground",
  //         "background_id": background_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeBackground",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resetBackgrounds.html).
  //   factory TdlibFunction.resetBackgrounds()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resetBackgrounds",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resetBackgrounds",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLocalizationTargetInfo.html).
  //   factory TdlibFunction.getLocalizationTargetInfo({
  //     bool? only_local,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLocalizationTargetInfo",
  //         "only_local": only_local,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLocalizationTargetInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLanguagePackInfo.html).
  //   factory TdlibFunction.getLanguagePackInfo({
  //     String? language_pack_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLanguagePackInfo",
  //         "language_pack_id": language_pack_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLanguagePackInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLanguagePackStrings.html).
  //   factory TdlibFunction.getLanguagePackStrings({
  //     String? language_pack_id,
  //     List<String>? keys,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLanguagePackStrings",
  //         "language_pack_id": language_pack_id,
  //         "keys": keys,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLanguagePackStrings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1synchronizeLanguagePack.html).
  //   factory TdlibFunction.synchronizeLanguagePack({
  //     String? language_pack_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "synchronizeLanguagePack",
  //         "language_pack_id": language_pack_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method synchronizeLanguagePack",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addCustomServerLanguagePack.html).
  //   factory TdlibFunction.addCustomServerLanguagePack({
  //     String? language_pack_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addCustomServerLanguagePack",
  //         "language_pack_id": language_pack_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addCustomServerLanguagePack",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setCustomLanguagePack.html).
  //   factory TdlibFunction.setCustomLanguagePack({
  //     LanguagePackInfo? info,
  //     List<LanguagePackString>? strings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setCustomLanguagePack",
  //         "info": (info != null)?info.toJson(): null,
  //         "strings": (strings != null)?strings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setCustomLanguagePack",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editCustomLanguagePackInfo.html).
  //   factory TdlibFunction.editCustomLanguagePackInfo({
  //     LanguagePackInfo? info,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editCustomLanguagePackInfo",
  //         "info": (info != null)?info.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editCustomLanguagePackInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setCustomLanguagePackString.html).
  //   factory TdlibFunction.setCustomLanguagePackString({
  //     String? language_pack_id,
  //     LanguagePackString? new_string,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setCustomLanguagePackString",
  //         "language_pack_id": language_pack_id,
  //         "new_string": (new_string != null)?new_string.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setCustomLanguagePackString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteLanguagePack.html).
  //   factory TdlibFunction.deleteLanguagePack({
  //     String? language_pack_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteLanguagePack",
  //         "language_pack_id": language_pack_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteLanguagePack",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1registerDevice.html).
  //   factory TdlibFunction.registerDevice({
  //     DeviceToken? device_token,
  //     List<int>? other_user_ids,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "registerDevice",
  //         "device_token": (device_token != null)?device_token.toJson(): null,
  //         "other_user_ids": other_user_ids,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method registerDevice",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1processPushNotification.html).
  //   factory TdlibFunction.processPushNotification({
  //     String? payload,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "processPushNotification",
  //         "payload": payload,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method processPushNotification",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPushReceiverId.html).
  //   factory TdlibFunction.getPushReceiverId({
  //     String? payload,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPushReceiverId",
  //         "payload": payload,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPushReceiverId",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getRecentlyVisitedTMeUrls.html).
  //   factory TdlibFunction.getRecentlyVisitedTMeUrls({
  //     String? referrer,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getRecentlyVisitedTMeUrls",
  //         "referrer": referrer,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getRecentlyVisitedTMeUrls",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setUserPrivacySettingRules.html).
  //   factory TdlibFunction.setUserPrivacySettingRules({
  //     UserPrivacySetting? setting,
  //     UserPrivacySettingRules? rules,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setUserPrivacySettingRules",
  //         "setting": (setting != null)?setting.toJson(): null,
  //         "rules": (rules != null)?rules.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setUserPrivacySettingRules",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getUserPrivacySettingRules.html).
  //   factory TdlibFunction.getUserPrivacySettingRules({
  //     UserPrivacySetting? setting,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getUserPrivacySettingRules",
  //         "setting": (setting != null)?setting.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getUserPrivacySettingRules",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getOption.html).
  //   factory TdlibFunction.getOption({
  //     String? name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getOption",
  //         "name": name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getOption",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setOption.html).
  //   factory TdlibFunction.setOption({
  //     String? name,
  //     OptionValue? value,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setOption",
  //         "name": name,
  //         "value": (value != null)?value.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setOption",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setAccountTtl.html).
  //   factory TdlibFunction.setAccountTtl({
  //     AccountTtl? ttl,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setAccountTtl",
  //         "ttl": (ttl != null)?ttl.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setAccountTtl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAccountTtl.html).
  //   factory TdlibFunction.getAccountTtl()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAccountTtl",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAccountTtl",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deleteAccount.html).
  //   factory TdlibFunction.deleteAccount({
  //     String? reason,
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deleteAccount",
  //         "reason": reason,
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deleteAccount",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeChatActionBar.html).
  //   factory TdlibFunction.removeChatActionBar({
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeChatActionBar",
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeChatActionBar",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reportChat.html).
  //   factory TdlibFunction.reportChat({
  //     int? chat_id,
  //     List<int>? message_ids,
  //     ChatReportReason? reason,
  //     String? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reportChat",
  //         "chat_id": chat_id,
  //         "message_ids": message_ids,
  //         "reason": (reason != null)?reason.toJson(): null,
  //         "text": text,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reportChat",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reportChatPhoto.html).
  //   factory TdlibFunction.reportChatPhoto({
  //     int? chat_id,
  //     int? file_id,
  //     ChatReportReason? reason,
  //     String? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reportChatPhoto",
  //         "chat_id": chat_id,
  //         "file_id": file_id,
  //         "reason": (reason != null)?reason.toJson(): null,
  //         "text": text,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reportChatPhoto",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1reportMessageReactions.html).
  //   factory TdlibFunction.reportMessageReactions({
  //     int? chat_id,
  //     int? message_id,
  //     MessageSender? sender_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "reportMessageReactions",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "sender_id": (sender_id != null)?sender_id.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method reportMessageReactions",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getChatStatistics.html).
  //   factory TdlibFunction.getChatStatistics({
  //     int? chat_id,
  //     bool? is_dark,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getChatStatistics",
  //         "chat_id": chat_id,
  //         "is_dark": is_dark,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getChatStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMessageStatistics.html).
  //   factory TdlibFunction.getMessageStatistics({
  //     int? chat_id,
  //     int? message_id,
  //     bool? is_dark,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMessageStatistics",
  //         "chat_id": chat_id,
  //         "message_id": message_id,
  //         "is_dark": is_dark,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMessageStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStatisticalGraph.html).
  //   factory TdlibFunction.getStatisticalGraph({
  //     int? chat_id,
  //     String? token,
  //     int? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStatisticalGraph",
  //         "chat_id": chat_id,
  //         "token": token,
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStatisticalGraph",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStorageStatistics.html).
  //   factory TdlibFunction.getStorageStatistics({
  //     int? chat_limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStorageStatistics",
  //         "chat_limit": chat_limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStorageStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getStorageStatisticsFast.html).
  //   factory TdlibFunction.getStorageStatisticsFast()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getStorageStatisticsFast",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getStorageStatisticsFast",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getDatabaseStatistics.html).
  //   factory TdlibFunction.getDatabaseStatistics()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getDatabaseStatistics",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getDatabaseStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1optimizeStorage.html).
  //   factory TdlibFunction.optimizeStorage({
  //     int? size,
  //     int? ttl,
  //     int? count,
  //     int? immunity_delay,
  //     List<FileType>? file_types,
  //     List<int>? chat_ids,
  //     List<int>? exclude_chat_ids,
  //     bool? return_deleted_file_statistics,
  //     int? chat_limit,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "optimizeStorage",
  //         "size": size,
  //         "ttl": ttl,
  //         "count": count,
  //         "immunity_delay": immunity_delay,
  //         "file_types": (file_types != null)?file_types.toJson(): null,
  //         "chat_ids": chat_ids,
  //         "exclude_chat_ids": exclude_chat_ids,
  //         "return_deleted_file_statistics": return_deleted_file_statistics,
  //         "chat_limit": chat_limit,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method optimizeStorage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setNetworkType.html).
  //   factory TdlibFunction.setNetworkType({
  //     NetworkType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setNetworkType",
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setNetworkType",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getNetworkStatistics.html).
  //   factory TdlibFunction.getNetworkStatistics({
  //     bool? only_current,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getNetworkStatistics",
  //         "only_current": only_current,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getNetworkStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addNetworkStatistics.html).
  //   factory TdlibFunction.addNetworkStatistics({
  //     NetworkStatisticsEntry? entry,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addNetworkStatistics",
  //         "entry": (entry != null)?entry.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addNetworkStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resetNetworkStatistics.html).
  //   factory TdlibFunction.resetNetworkStatistics()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resetNetworkStatistics",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resetNetworkStatistics",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAutoDownloadSettingsPresets.html).
  //   factory TdlibFunction.getAutoDownloadSettingsPresets()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAutoDownloadSettingsPresets",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAutoDownloadSettingsPresets",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setAutoDownloadSettings.html).
  //   factory TdlibFunction.setAutoDownloadSettings({
  //     AutoDownloadSettings? settings,
  //     NetworkType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setAutoDownloadSettings",
  //         "settings": (settings != null)?settings.toJson(): null,
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setAutoDownloadSettings",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getBankCardInfo.html).
  //   factory TdlibFunction.getBankCardInfo({
  //     String? bank_card_number,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getBankCardInfo",
  //         "bank_card_number": bank_card_number,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getBankCardInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPassportElement.html).
  //   factory TdlibFunction.getPassportElement({
  //     PassportElementType? type,
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPassportElement",
  //         "type": (type != null)?type.toJson(): null,
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPassportElement",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getAllPassportElements.html).
  //   factory TdlibFunction.getAllPassportElements({
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getAllPassportElements",
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getAllPassportElements",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setPassportElement.html).
  //   factory TdlibFunction.setPassportElement({
  //     InputPassportElement? element,
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setPassportElement",
  //         "element": (element != null)?element.toJson(): null,
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setPassportElement",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1deletePassportElement.html).
  //   factory TdlibFunction.deletePassportElement({
  //     PassportElementType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "deletePassportElement",
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method deletePassportElement",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setPassportElementErrors.html).
  //   factory TdlibFunction.setPassportElementErrors({
  //     int? user_id,
  //     List<InputPassportElementError>? errors,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setPassportElementErrors",
  //         "user_id": user_id,
  //         "errors": (errors != null)?errors.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setPassportElementErrors",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPreferredCountryLanguage.html).
  //   factory TdlibFunction.getPreferredCountryLanguage({
  //     String? country_code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPreferredCountryLanguage",
  //         "country_code": country_code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPreferredCountryLanguage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendPhoneNumberVerificationCode.html).
  //   factory TdlibFunction.sendPhoneNumberVerificationCode({
  //     String? phone_number,
  //     PhoneNumberAuthenticationSettings? settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendPhoneNumberVerificationCode",
  //         "phone_number": phone_number,
  //         "settings": (settings != null)?settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendPhoneNumberVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendPhoneNumberVerificationCode.html).
  //   factory TdlibFunction.resendPhoneNumberVerificationCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendPhoneNumberVerificationCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendPhoneNumberVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkPhoneNumberVerificationCode.html).
  //   factory TdlibFunction.checkPhoneNumberVerificationCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkPhoneNumberVerificationCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkPhoneNumberVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendEmailAddressVerificationCode.html).
  //   factory TdlibFunction.sendEmailAddressVerificationCode({
  //     String? email_address,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendEmailAddressVerificationCode",
  //         "email_address": email_address,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendEmailAddressVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendEmailAddressVerificationCode.html).
  //   factory TdlibFunction.resendEmailAddressVerificationCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendEmailAddressVerificationCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendEmailAddressVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkEmailAddressVerificationCode.html).
  //   factory TdlibFunction.checkEmailAddressVerificationCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkEmailAddressVerificationCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkEmailAddressVerificationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPassportAuthorizationForm.html).
  //   factory TdlibFunction.getPassportAuthorizationForm({
  //     int? bot_user_id,
  //     String? scope,
  //     String? public_key,
  //     String? nonce,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPassportAuthorizationForm",
  //         "bot_user_id": bot_user_id,
  //         "scope": scope,
  //         "public_key": public_key,
  //         "nonce": nonce,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPassportAuthorizationForm",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPassportAuthorizationFormAvailableElements.html).
  //   factory TdlibFunction.getPassportAuthorizationFormAvailableElements({
  //     int? autorization_form_id,
  //     String? password,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPassportAuthorizationFormAvailableElements",
  //         "autorization_form_id": autorization_form_id,
  //         "password": password,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPassportAuthorizationFormAvailableElements",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendPassportAuthorizationForm.html).
  //   factory TdlibFunction.sendPassportAuthorizationForm({
  //     int? autorization_form_id,
  //     List<PassportElementType>? types,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendPassportAuthorizationForm",
  //         "autorization_form_id": autorization_form_id,
  //         "types": (types != null)?types.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendPassportAuthorizationForm",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendPhoneNumberConfirmationCode.html).
  //   factory TdlibFunction.sendPhoneNumberConfirmationCode({
  //     String? hash,
  //     String? phone_number,
  //     PhoneNumberAuthenticationSettings? settings,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendPhoneNumberConfirmationCode",
  //         "hash": hash,
  //         "phone_number": phone_number,
  //         "settings": (settings != null)?settings.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendPhoneNumberConfirmationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1resendPhoneNumberConfirmationCode.html).
  //   factory TdlibFunction.resendPhoneNumberConfirmationCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "resendPhoneNumberConfirmationCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method resendPhoneNumberConfirmationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkPhoneNumberConfirmationCode.html).
  //   factory TdlibFunction.checkPhoneNumberConfirmationCode({
  //     String? code,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkPhoneNumberConfirmationCode",
  //         "code": code,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkPhoneNumberConfirmationCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setBotUpdatesStatus.html).
  //   factory TdlibFunction.setBotUpdatesStatus({
  //     int? pending_update_count,
  //     String? error_message,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setBotUpdatesStatus",
  //         "pending_update_count": pending_update_count,
  //         "error_message": error_message,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setBotUpdatesStatus",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1uploadStickerFile.html).
  //   factory TdlibFunction.uploadStickerFile({
  //     int? user_id,
  //     InputSticker? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "uploadStickerFile",
  //         "user_id": user_id,
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method uploadStickerFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getSuggestedStickerSetName.html).
  //   factory TdlibFunction.getSuggestedStickerSetName({
  //     String? title,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getSuggestedStickerSetName",
  //         "title": title,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getSuggestedStickerSetName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1checkStickerSetName.html).
  //   factory TdlibFunction.checkStickerSetName({
  //     String? name,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "checkStickerSetName",
  //         "name": name,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method checkStickerSetName",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1createNewStickerSet.html).
  //   factory TdlibFunction.createNewStickerSet({
  //     int? user_id,
  //     String? title,
  //     String? name,
  //     StickerType? sticker_type,
  //     List<InputSticker>? stickers,
  //     String? source,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "createNewStickerSet",
  //         "user_id": user_id,
  //         "title": title,
  //         "name": name,
  //         "sticker_type": (sticker_type != null)?sticker_type.toJson(): null,
  //         "stickers": (stickers != null)?stickers.toJson(): null,
  //         "source": source,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method createNewStickerSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addStickerToSet.html).
  //   factory TdlibFunction.addStickerToSet({
  //     int? user_id,
  //     String? name,
  //     InputSticker? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addStickerToSet",
  //         "user_id": user_id,
  //         "name": name,
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addStickerToSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setStickerSetThumbnail.html).
  //   factory TdlibFunction.setStickerSetThumbnail({
  //     int? user_id,
  //     String? name,
  //     InputFile? thumbnail,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setStickerSetThumbnail",
  //         "user_id": user_id,
  //         "name": name,
  //         "thumbnail": (thumbnail != null)?thumbnail.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setStickerSetThumbnail",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setStickerPositionInSet.html).
  //   factory TdlibFunction.setStickerPositionInSet({
  //     InputFile? sticker,
  //     int? position,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setStickerPositionInSet",
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //         "position": position,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setStickerPositionInSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeStickerFromSet.html).
  //   factory TdlibFunction.removeStickerFromSet({
  //     InputFile? sticker,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeStickerFromSet",
  //         "sticker": (sticker != null)?sticker.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeStickerFromSet",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getMapThumbnailFile.html).
  //   factory TdlibFunction.getMapThumbnailFile({
  //     Location? location,
  //     int? zoom,
  //     int? width,
  //     int? height,
  //     int? scale,
  //     int? chat_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getMapThumbnailFile",
  //         "location": (location != null)?location.toJson(): null,
  //         "zoom": zoom,
  //         "width": width,
  //         "height": height,
  //         "scale": scale,
  //         "chat_id": chat_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getMapThumbnailFile",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPremiumLimit.html).
  //   factory TdlibFunction.getPremiumLimit({
  //     PremiumLimitType? limit_type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPremiumLimit",
  //         "limit_type": (limit_type != null)?limit_type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPremiumLimit",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPremiumFeatures.html).
  //   factory TdlibFunction.getPremiumFeatures({
  //     PremiumSource? source,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPremiumFeatures",
  //         "source": (source != null)?source.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPremiumFeatures",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPremiumStickerExamples.html).
  //   factory TdlibFunction.getPremiumStickerExamples()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPremiumStickerExamples",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPremiumStickerExamples",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1viewPremiumFeature.html).
  //   factory TdlibFunction.viewPremiumFeature({
  //     PremiumFeature? feature,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "viewPremiumFeature",
  //         "feature": (feature != null)?feature.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method viewPremiumFeature",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1clickPremiumSubscriptionButton.html).
  //   factory TdlibFunction.clickPremiumSubscriptionButton()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "clickPremiumSubscriptionButton",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method clickPremiumSubscriptionButton",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPremiumState.html).
  //   factory TdlibFunction.getPremiumState()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPremiumState",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPremiumState",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1canPurchasePremium.html).
  //   factory TdlibFunction.canPurchasePremium({
  //     StorePaymentPurpose? purpose,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "canPurchasePremium",
  //         "purpose": (purpose != null)?purpose.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method canPurchasePremium",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1assignAppStoreTransaction.html).
  //   factory TdlibFunction.assignAppStoreTransaction({
  //     String? receipt,
  //     StorePaymentPurpose? purpose,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "assignAppStoreTransaction",
  //         "receipt": receipt,
  //         "purpose": (purpose != null)?purpose.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method assignAppStoreTransaction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1assignGooglePlayTransaction.html).
  //   factory TdlibFunction.assignGooglePlayTransaction({
  //     String? package_name,
  //     String? store_product_id,
  //     String? purchase_token,
  //     StorePaymentPurpose? purpose,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "assignGooglePlayTransaction",
  //         "package_name": package_name,
  //         "store_product_id": store_product_id,
  //         "purchase_token": purchase_token,
  //         "purpose": (purpose != null)?purpose.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method assignGooglePlayTransaction",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1acceptTermsOfService.html).
  //   factory TdlibFunction.acceptTermsOfService({
  //     String? terms_of_service_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "acceptTermsOfService",
  //         "terms_of_service_id": terms_of_service_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method acceptTermsOfService",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1sendCustomRequest.html).
  //   factory TdlibFunction.sendCustomRequest({
  //     String? method,
  //     String? parameters,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "sendCustomRequest",
  //         "method": method,
  //         "parameters": parameters,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method sendCustomRequest",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1answerCustomQuery.html).
  //   factory TdlibFunction.answerCustomQuery({
  //     int? custom_query_id,
  //     String? data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "answerCustomQuery",
  //         "custom_query_id": custom_query_id,
  //         "data": data,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method answerCustomQuery",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setAlarm.html).
  //   factory TdlibFunction.setAlarm({
  //     double? seconds,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setAlarm",
  //         "seconds": seconds,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setAlarm",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCountries.html).
  //   factory TdlibFunction.getCountries()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCountries",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCountries",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getCountryCode.html).
  //   factory TdlibFunction.getCountryCode()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getCountryCode",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getCountryCode",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPhoneNumberInfo.html).
  //   factory TdlibFunction.getPhoneNumberInfo({
  //     String? phone_number_prefix,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPhoneNumberInfo",
  //         "phone_number_prefix": phone_number_prefix,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPhoneNumberInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getPhoneNumberInfoSync.html).
  //   factory TdlibFunction.getPhoneNumberInfoSync({
  //     String? language_code,
  //     String? phone_number_prefix,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getPhoneNumberInfoSync",
  //         "language_code": language_code,
  //         "phone_number_prefix": phone_number_prefix,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getPhoneNumberInfoSync",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getApplicationDownloadLink.html).
  //   factory TdlibFunction.getApplicationDownloadLink()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getApplicationDownloadLink",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getApplicationDownloadLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getDeepLinkInfo.html).
  //   factory TdlibFunction.getDeepLinkInfo({
  //     String? link,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getDeepLinkInfo",
  //         "link": link,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getDeepLinkInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getApplicationConfig.html).
  //   factory TdlibFunction.getApplicationConfig()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getApplicationConfig",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getApplicationConfig",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1saveApplicationLogEvent.html).
  //   factory TdlibFunction.saveApplicationLogEvent({
  //     String? type,
  //     int? chat_id,
  //     JsonValue? data,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "saveApplicationLogEvent",
  //         "type": type,
  //         "chat_id": chat_id,
  //         "data": (data != null)?data.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method saveApplicationLogEvent",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addProxy.html).
  //   factory TdlibFunction.addProxy({
  //     String? server,
  //     int? port,
  //     bool? enable,
  //     ProxyType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addProxy",
  //         "server": server,
  //         "port": port,
  //         "enable": enable,
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1editProxy.html).
  //   factory TdlibFunction.editProxy({
  //     int? proxy_id,
  //     String? server,
  //     int? port,
  //     bool? enable,
  //     ProxyType? type,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "editProxy",
  //         "proxy_id": proxy_id,
  //         "server": server,
  //         "port": port,
  //         "enable": enable,
  //         "type": (type != null)?type.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method editProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1enableProxy.html).
  //   factory TdlibFunction.enableProxy({
  //     int? proxy_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "enableProxy",
  //         "proxy_id": proxy_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method enableProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1disableProxy.html).
  //   factory TdlibFunction.disableProxy()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "disableProxy",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method disableProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1removeProxy.html).
  //   factory TdlibFunction.removeProxy({
  //     int? proxy_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "removeProxy",
  //         "proxy_id": proxy_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method removeProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getProxies.html).
  //   factory TdlibFunction.getProxies()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getProxies",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getProxies",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getProxyLink.html).
  //   factory TdlibFunction.getProxyLink({
  //     int? proxy_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getProxyLink",
  //         "proxy_id": proxy_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getProxyLink",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1pingProxy.html).
  //   factory TdlibFunction.pingProxy({
  //     int? proxy_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "pingProxy",
  //         "proxy_id": proxy_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method pingProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setLogStream.html).
  //   factory TdlibFunction.setLogStream({
  //     LogStream? log_stream,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setLogStream",
  //         "log_stream": (log_stream != null)?log_stream.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setLogStream",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLogStream.html).
  //   factory TdlibFunction.getLogStream()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLogStream",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLogStream",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setLogVerbosityLevel.html).
  //   factory TdlibFunction.setLogVerbosityLevel({
  //     int? new_verbosity_level,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setLogVerbosityLevel",
  //         "new_verbosity_level": new_verbosity_level,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setLogVerbosityLevel",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLogVerbosityLevel.html).
  //   factory TdlibFunction.getLogVerbosityLevel()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLogVerbosityLevel",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLogVerbosityLevel",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLogTags.html).
  //   factory TdlibFunction.getLogTags()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLogTags",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLogTags",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setLogTagVerbosityLevel.html).
  //   factory TdlibFunction.setLogTagVerbosityLevel({
  //     String? tag,
  //     int? new_verbosity_level,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setLogTagVerbosityLevel",
  //         "tag": tag,
  //         "new_verbosity_level": new_verbosity_level,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setLogTagVerbosityLevel",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getLogTagVerbosityLevel.html).
  //   factory TdlibFunction.getLogTagVerbosityLevel({
  //     String? tag,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getLogTagVerbosityLevel",
  //         "tag": tag,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getLogTagVerbosityLevel",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1addLogMessage.html).
  //   factory TdlibFunction.addLogMessage({
  //     int? verbosity_level,
  //     String? text,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "addLogMessage",
  //         "verbosity_level": verbosity_level,
  //         "text": text,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method addLogMessage",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1getUserSupportInfo.html).
  //   factory TdlibFunction.getUserSupportInfo({
  //     int? user_id,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "getUserSupportInfo",
  //         "user_id": user_id,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method getUserSupportInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1setUserSupportInfo.html).
  //   factory TdlibFunction.setUserSupportInfo({
  //     int? user_id,
  //     FormattedText? message,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "setUserSupportInfo",
  //         "user_id": user_id,
  //         "message": (message != null)?message.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method setUserSupportInfo",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallEmpty.html).
  //   factory TdlibFunction.testCallEmpty()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallEmpty",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallEmpty",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallString.html).
  //   factory TdlibFunction.testCallString({
  //     String? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallString",
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallBytes.html).
  //   factory TdlibFunction.testCallBytes({
  //     String? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallBytes",
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallBytes",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallVectorInt.html).
  //   factory TdlibFunction.testCallVectorInt({
  //     List<int>? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallVectorInt",
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallVectorInt",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallVectorIntObject.html).
  //   factory TdlibFunction.testCallVectorIntObject({
  //     List<TestInt>? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallVectorIntObject",
  //         "x": (x != null)?x.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallVectorIntObject",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallVectorString.html).
  //   factory TdlibFunction.testCallVectorString({
  //     List<String>? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallVectorString",
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallVectorString",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testCallVectorStringObject.html).
  //   factory TdlibFunction.testCallVectorStringObject({
  //     List<TestString>? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testCallVectorStringObject",
  //         "x": (x != null)?x.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testCallVectorStringObject",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testSquareInt.html).
  //   factory TdlibFunction.testSquareInt({
  //     int? x,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testSquareInt",
  //         "x": x,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testSquareInt",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testNetwork.html).
  //   factory TdlibFunction.testNetwork()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testNetwork",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testNetwork",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testProxy.html).
  //   factory TdlibFunction.testProxy({
  //     String? server,
  //     int? port,
  //     ProxyType? type,
  //     int? dc_id,
  //     double? timeout,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testProxy",
  //         "server": server,
  //         "port": port,
  //         "type": (type != null)?type.toJson(): null,
  //         "dc_id": dc_id,
  //         "timeout": timeout,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testProxy",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testGetDifference.html).
  //   factory TdlibFunction.testGetDifference()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testGetDifference",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testGetDifference",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testUseUpdate.html).
  //   factory TdlibFunction.testUseUpdate()  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testUseUpdate",
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testUseUpdate",
  //       });
  //     }
  //   }


  //   /// Tdlib Api methods full check [Tdlib-Functions](https://core.telegram.org/tdlib/docs/classtd_1_1td__api_1_1testReturnError.html).
  //   factory TdlibFunction.testReturnError({
  //     Error? error,
  //    })  {
  //     try {
  //       return TdlibFunction({
  //         "@type": "testReturnError",
  //         "error": (error != null)?error.toJson(): null,
  //       });
  //     } catch (e){
  //       return TdlibFunction({
  //         "@type": "error",
  //         "error": "${e}",
  //         "message": "error method testReturnError",
  //       });
  //     }
  //   }


  //   Map toMap(){
  //     return rawData;
  //   }

  //   Map toJson(){
  //     return rawData;
  //   }


  //   @override
  //   String toString(){
  //     return json.encode(rawData);
  //   }

  // }

