.class public Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeShopDemoReceiver.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final SHOP_DEMO_DEFAULT_BRIGHTNESS_PERCENT:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 61
    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mCurConfig:Landroid/content/res/Configuration;

    const v0, 0x3f4ccccd  # 0.8f

    .line 67
    iput v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->SHOP_DEMO_DEFAULT_BRIGHTNESS_PERCENT:F

    return-void
.end method

.method private clearFaceData()V
    .registers 1

    .line 369
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->clearFaceData(Landroid/content/Context;)V

    return-void
.end method

.method private clearFingerprint()V
    .registers 3

    .line 347
    new-instance p0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 348
    invoke-interface {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 349
    invoke-interface {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 350
    invoke-interface {p0, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 351
    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 352
    array-length v1, v0

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 353
    invoke-interface {p0, v1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V

    .line 355
    :cond_1e
    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    const-string p0, "FlymeShopDemoReceiver"

    const-string v0, "delete fingerprint suceess!"

    .line 356
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearPassword()V
    .registers 3

    .line 310
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    .line 311
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 312
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    .line 313
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.meizu.action.PASSWORD_HAVE_CLEARD"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "FlymeShopDemoReceiver"

    const-string v0, "clear password!"

    .line 316
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_28
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 321
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setAppLockEnable(Z)V

    .line 323
    :cond_37
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isDocumentLockEnable()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 324
    invoke-virtual {p0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setDocumentLockEnable(Z)V

    .line 327
    :cond_40
    invoke-virtual {p0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isSecretsModePasswordFileExist()Z

    move-result v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x4

    .line 328
    invoke-virtual {p0, v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearPassword(IZ)V

    :cond_4a
    return-void
.end method

.method private clearPasswordAndFaceData()V
    .registers 1

    .line 334
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearPassword()V

    .line 335
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearFaceData()V

    return-void
.end method

.method private clearPasswordAndFingerPrint()V
    .registers 1

    .line 339
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearPassword()V

    .line 340
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearFingerprint()V

    return-void
.end method

.method private createFingerprintShortcut()V
    .registers 4

    .line 156
    new-instance p0, Landroid/content/Intent;

    const-string v0, "flyme.intent.action.FINGERPRINT_SHOP_DEMO"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120dae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08012c

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/settings/utils/MzUtils;->createShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method private createPrivacyModeShortcut()V
    .registers 4

    .line 162
    new-instance p0, Landroid/content/Intent;

    const-string v0, "flyme.intent.action.PRIVACY_SHOP_DEMO"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1206ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0800ee

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/settings/utils/MzUtils;->createShortcut(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;)V

    return-void
.end method

.method private resetDemoValue(Landroid/content/Context;)V
    .registers 3

    const-string v0, "FlymeShopDemoReceiver"

    .line 170
    :try_start_2
    invoke-direct {p0, p1}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->setCleanUserDataAlarm(Landroid/content/Context;)V

    const-string p1, "ResetForDomeReceiver--start--"

    .line 171
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_37

    .line 173
    :try_start_a
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetSoundSettings()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_17

    :catch_e
    move-exception p1

    .line 175
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "resetSoundSettings--error3--"

    .line 176
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_37

    .line 179
    :goto_17
    :try_start_17
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetDisplaySettings()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception p1

    .line 181
    :try_start_1c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "resetDisplaySettings--error4--"

    .line 182
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_24} :catch_37

    .line 185
    :goto_24
    :try_start_24
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetOtherSettings()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_31

    :catch_28
    move-exception p0

    .line 187
    :try_start_29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "resetOtherSettings--error6--"

    .line 188
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const-string p0, "ResetForDomeReceiver--end--"

    .line 190
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_36} :catch_37

    goto :goto_3c

    :catch_37
    const-string p0, "ResetForDomeReceiver--error--"

    .line 192
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method

.method private resetDisplaySettings()V
    .registers 4

    const-string v0, "FlymeShopDemoReceiver"

    const-string v1, "resetDisplaySettings----"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetFont()V

    .line 239
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "statusbar_battery_percent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd  # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 244
    sget-object v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    invoke-direct {p0, v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->setBrightness(I)V

    return-void
.end method

.method private resetFont()V
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 279
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->writeFontSizePreference(Ljava/lang/Object;)V

    return-void
.end method

.method private resetOtherSettings()V
    .registers 5

    .line 197
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_10

    .line 198
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "FlymeShopDemoReceiver"

    const/4 v2, 0x1

    if-eqz v0, :cond_21

    const-string v0, "ResetForDomeReceiver--wifiManager--"

    .line 202
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_21
    const-string v0, "ResetForDomeReceiver--Location--"

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gps"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 209
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "network"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    const-string v0, "ResetForDomeReceiver--RotationPolicy--"

    .line 212
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 217
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_63

    const-string v0, "ResetForDomeReceiver--mTelephonyManager--"

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 221
    :cond_63
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_time_zone"

    .line 222
    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "time_12_24"

    const-string v1, "24"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "meizu_data_collection"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "install_non_market_apps"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetRegion()V
    .registers 2

    .line 374
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-string p0, "persist.sys.meizu.region"

    .line 377
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 379
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/meizu/settings/language/FlymeRegion;->setCountry(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    :cond_19
    const-string p0, "FlymeShopDemoReceiver"

    const-string v0, "persist.sys.meizu.region is null, init default region"

    .line 381
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeRegion;->initDefaultCountValue(Landroid/content/Context;)V

    :goto_25
    return-void
.end method

.method private resetSoundSettings()V
    .registers 6

    const-string v0, "FlymeShopDemoReceiver"

    const-string v1, "resetSoundSettings----"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_17

    .line 253
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mAudioManager:Landroid/media/AudioManager;

    .line 255
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 257
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "vibrate_when_ringing"

    .line 259
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 261
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string p0, "dtmf_tone"

    .line 264
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "key_sounds_enabled"

    .line 265
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "lockscreen_sounds_enabled"

    .line 266
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "camera_sounds_enabled"

    .line 267
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "sound_effects_enabled"

    .line 268
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "charging_sounds_enabled"

    .line 269
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "haptic_feedback_enabled"

    .line 270
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "homekey_feedback_intensity"

    const-string v1, "content://com.immersion.android.haptics.defaulttheme"

    .line 272
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/16 p0, 0x20

    const-string v1, "homekey_volume_level"

    .line 274
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p0, "screenshot_sounds_enabled"

    .line 275
    invoke-static {v0, p0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private resetTheme()V
    .registers 2

    .line 304
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.meizu.theme.restore"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.meizu.customizecenter"

    .line 305
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    sget-object v0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendClearUserDataBroadcast(Landroid/content/Context;)V
    .registers 3

    const-string p0, "FlymeShopDemoReceiver"

    const-string v0, "ResetForDomeReceiver--sendClearUserDataBroadcast!--"

    .line 96
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android"

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setBrightness(I)V
    .registers 3

    .line 299
    sget-object p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 300
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private setCleanUserDataAlarm(Landroid/content/Context;)V
    .registers 8

    const-string p0, "FlymeShopDemoReceiver"

    const-string v0, "ResetForDomeReceiver--setCleanUserDataAlarm!--"

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "alarm"

    .line 72
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.meizu.action.RECEIVE_CLEAN_USER_DATA_ALARM"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 77
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v4, 0xb

    const/4 v5, 0x2

    .line 83
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    const/16 v4, 0xd

    .line 85
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    const/16 v4, 0xe

    .line 86
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    .line 87
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_52

    .line 88
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_5a

    .line 90
    :cond_52
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 92
    :goto_5a
    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private writeFontSizePreference(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "FlymeShopDemoReceiver"

    .line 284
    :try_start_2
    iget-object v1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    iput p1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 285
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    const-string p0, "Unable to save font size---"

    .line 289
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :catch_1e
    const-string p0, "Unable to save font size"

    .line 287
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 105
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 108
    :cond_9
    sput-object p1, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 110
    invoke-direct {p0, p1}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetDemoValue(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetTheme()V

    .line 112
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->createFingerprintShortcut()V

    .line 113
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetRegion()V

    goto/16 :goto_153

    .line 114
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.action.RECEIVE_CLEAN_USER_DATA_ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/16 v0, 0xb

    const/4 v1, 0x2

    .line 116
    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 117
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->clear(I)V

    const/16 v0, 0xd

    .line 118
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->clear(I)V

    const/16 v0, 0xe

    .line 119
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->clear(I)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 121
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_153

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p2, v0, v2

    if-gtz p2, :cond_153

    .line 122
    invoke-direct {p0, p1}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->sendClearUserDataBroadcast(Landroid/content/Context;)V

    goto/16 :goto_153

    .line 124
    :cond_66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flyme.intent.action.RESET_FOR_DEMO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 125
    invoke-direct {p0, p1}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->resetDemoValue(Landroid/content/Context;)V

    goto/16 :goto_153

    .line 126
    :cond_77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 127
    invoke-direct {p0, p1}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->setCleanUserDataAlarm(Landroid/content/Context;)V

    goto/16 :goto_153

    .line 128
    :cond_88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_PLAYVIDEO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "FlymeShopDemoReceiver"

    if-eqz p1, :cond_a6

    const-string p1, "receive keygruad wakeup action, clearPasswordAndFingerPrint"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearFingerprint()V

    .line 131
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearFaceData()V

    .line 132
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearPassword()V

    goto/16 :goto_153

    .line 133
    :cond_a6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.meizu.action.CLEAR_FACE_DATA"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 134
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearPasswordAndFaceData()V

    goto/16 :goto_153

    .line 135
    :cond_b7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.meizu.action.CLEAR_PASSWORD"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 136
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->clearPasswordAndFingerPrint()V

    goto/16 :goto_153

    .line 137
    :cond_c8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_153

    .line 138
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 139
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "demo_privacy.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExisted:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_153

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_153

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_153

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoReceiver;->createPrivacyModeShortcut()V

    :cond_153
    :goto_153
    return-void
.end method
