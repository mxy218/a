.class public Lcom/meizu/settings/MzSettingsActivity;
.super Ljava/lang/Object;
.source "MzSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/MzSettingsActivity$FlymeDigitalHealthActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeAicyActivity;,
        Lcom/meizu/settings/MzSettingsActivity$HBMSetupActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeNfcSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeScreenPasswordActivity;,
        Lcom/meizu/settings/MzSettingsActivity$SimStatusActivity;,
        Lcom/meizu/settings/MzSettingsActivity$DefaultAppsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeSOSActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeNetworkAccessLicenseActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeAODSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeScreenZoomAndFontSizeActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeEraseSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeNavigationAndRecentsSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeRaiseFlipSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$AppCloneSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeLabActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeSystemUpdateActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeAccountActivity;,
        Lcom/meizu/settings/MzSettingsActivity$FlymeBatterySettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$VolumeSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MzWallpaperTypeSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MeizuSmartVoiceWakeupActivity;,
        Lcom/meizu/settings/MzSettingsActivity$RingtonePickerActivity;,
        Lcom/meizu/settings/MzSettingsActivity$IccLockSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$DoNotDisturbActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MzConfirmPasswordActivity;,
        Lcom/meizu/settings/MzSettingsActivity$EnterPasswordActivity;,
        Lcom/meizu/settings/MzSettingsActivity$ServiceSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MeizuSmartTouchActivity;,
        Lcom/meizu/settings/MzSettingsActivity$RootPermissionSettingsActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MzFingerprintActivity;,
        Lcom/meizu/settings/MzSettingsActivity$MzFaceActivity;,
        Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;,
        Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;,
        Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;,
        Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;
    }
.end annotation


# static fields
.field public static final SETTINGS_DISABLE_CATEGORY:[Ljava/lang/String;

.field public static sConnectivitySettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFilterDashboardTile:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ENTRY_FRAGMENTS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsLocaleReceiverRegisted:Z

.field private mIsShowingDashboard:Z

.field private mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

.field private mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

.field private mOnKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

.field private mOnWindowFocusChangedListener:Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;

.field private mPowerSaveObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    .line 162
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.meizu.settings.MobileNetworkSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.meizu.settings.wifi.AdvancedWifiSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.bluetooth.BluetoothSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.bluetooth.BluetoothAdvanceSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.meizu.settings.WirelessSettings"

    const-string v2, "com.android.settings.WirelessSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.meizu.settings.TetherSettingsIndex"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.meizu.settings.location.MzLocationSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.vpn2.VpnSettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.ApnEditor"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.wfd.WifiDisplaySettings"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.nfc.NfcSettings"

    const-string v2, "com.meizu.settings.nfc.NfcSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sConnectivitySettingsMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.network.ApnSettings"

    const-string v2, "com.meizu.connectivitysettings.ApnSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    .line 630
    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeAccountActivity;

    .line 631
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SimSettingsActivity;

    .line 632
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$TetherSettingsActivity;

    .line 633
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    .line 634
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$SoundSettingsActivity;

    .line 635
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$MzWallpaperTypeSettingsActivity;

    .line 636
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeNavigationAndRecentsSettingsActivity;

    .line 637
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeSOSActivity;

    .line 638
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeBatterySettingsActivity;

    .line 639
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeLabActivity;

    .line 640
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$DateTimeSettingsActivity;

    .line 641
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/Settings$StorageDashboardActivity;

    .line 642
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeSystemUpdateActivity;

    .line 643
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-class v1, Lcom/meizu/settings/MzSettingsActivity$FlymeNfcSettingsActivity;

    .line 644
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/meizu/settings/MzSettingsActivity;->SETTINGS_DISABLE_CATEGORY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 7

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsLocaleReceiverRegisted:Z

    .line 267
    new-instance v1, Lcom/meizu/settings/MzSettingsActivity$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/meizu/settings/MzSettingsActivity$2;-><init>(Lcom/meizu/settings/MzSettingsActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mPowerSaveObserver:Landroid/database/ContentObserver;

    const/16 v1, 0x5f

    new-array v1, v1, [Ljava/lang/String;

    .line 323
    const-class v2, Lcom/meizu/settings/security/FlymeSecuritySettings;

    .line 324
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-class v0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;

    .line 325
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-class v0, Lcom/meizu/settings/security/FlymeDocumentPasscodeSettings;

    .line 326
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/FlymeAccessPasswordSettings;

    .line 327
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/FlymeDeviceAdminAndCredential;

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/FlymeGuestModeSettings;

    .line 329
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/fingerprint/FlymeFingerprintManagementFragment;

    .line 330
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/icclock/FlymeIccLockSettings;

    .line 331
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x7

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/icclock/FlymeIcclockSettingsChooser;

    .line 332
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    .line 333
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;

    .line 334
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 335
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    .line 336
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    .line 337
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    .line 338
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;

    .line 339
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    .line 341
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationStatusbarSettings;

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    .line 343
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    .line 344
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/MzDisplaySettings;

    .line 345
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 346
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/VolumeSettings;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/HifiSettings;

    .line 348
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/SystemSoundFragment;

    .line 349
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/HapicFeedbackThemeFragment;

    .line 350
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/language/FlymeZonePicker;

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/scheduledpower/ScheduledPowerFragment;

    .line 352
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPreferenceFragment;

    .line 353
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/MzSimInfoManagement;

    .line 354
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/MzSimCardStatus;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;

    .line 356
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/ExternalRingtonePicker;

    .line 357
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x21

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/NetworkSettingManagement;

    .line 358
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x22

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/ForceTouchSettingsFragment;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x23

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/MzDisplayModeSettings;

    .line 360
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x24

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/BluelightReductionFragment;

    .line 361
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x25

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/easymode/FlymeEasyModeSettings;

    .line 362
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x26

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeAssistantSettings;

    .line 363
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x27

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    .line 364
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x28

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeLegalInfomationFragment;

    .line 365
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x29

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeLegalRegulationFragment;

    .line 366
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2a

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeAccessibilitySettings;

    .line 367
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupFragment;

    .line 368
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2c

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeQuickWakeupSelectAppFragment;

    .line 369
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;

    .line 370
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeSmartVoiceWakeupFragment;

    .line 371
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeMemory;

    .line 372
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x30

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    .line 373
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x31

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    .line 374
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x32

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeEraseSettings;

    .line 375
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x33

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/language/FlymeLocalePicker;

    .line 376
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x34

    aput-object v0, v1, v3

    const-class v0, Lcom/android/settings/ProxySelector;

    .line 377
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x35

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/ManageApplications;

    .line 378
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x36

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/RunningProcessesView;

    .line 379
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x37

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/InstalledAppDetails;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x38

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/RunningServiceDetails;

    .line 381
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x39

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/UsbSettings;

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/soundandvibrate/HomekeyHapicFeedbackThemeFragment;

    .line 383
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;

    .line 385
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3c

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeFlashLampEffectsSettings;

    .line 387
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3d

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymePrivacySettings;

    .line 388
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/appclone/AppCloneSettings;

    .line 390
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x40

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;

    .line 391
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x41

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeInfo;

    .line 392
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x42

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/aod/AODSettingsFragment;

    .line 393
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x43

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    .line 394
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x44

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/language/FlymeCountryPicker;

    .line 395
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x45

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/FlymeApplicationManagementFragment;

    .line 396
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x46

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeVoiceAssistentFragment;

    .line 397
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x47

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;

    .line 398
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x48

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/donotdisturb/WhiteListFragment;

    .line 399
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x49

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/security/ScreenPinningSettings;

    .line 400
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4a

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/ScreenZoomAndFontSizeSettings;

    .line 401
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4b

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/FlymeRaiseAndFlipFragment;

    .line 402
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4c

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;

    .line 403
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4d

    aput-object v0, v1, v3

    const-class v0, Lcom/android/settings/sim/SimRestrictionDialog;

    .line 405
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4e

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    .line 407
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4f

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    .line 408
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x50

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/applications/ExternalSourcesDetails;

    .line 409
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x51

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleSettingsFragment;

    .line 410
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x52

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeStatus;

    .line 411
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x53

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/deviceinfo/FlymeSimStatus;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x54

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbScheduleList;

    .line 413
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x55

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/notificationstatusbar/FlymeNotificationAppList;

    .line 414
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x56

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/MobileNetworkSettings;

    .line 415
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x57

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    .line 416
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x58

    aput-object v0, v1, v3

    const-class v0, Lcom/android/settings/applications/specialaccess/SpecialAccessSettings;

    .line 417
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x59

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/hbm/HBMSetupSettings;

    .line 418
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5a

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 419
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5b

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/ScreenRefreshRateFragment;

    .line 420
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5c

    aput-object v0, v1, v3

    const-class v0, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    .line 421
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5d

    aput-object v0, v1, v3

    const-class v0, Lcom/meizu/settings/display/AdaptiveKeepBrightScreenFragment;

    .line 422
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5e

    aput-object v0, v1, v3

    iput-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 471
    new-instance v0, Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;-><init>(Lcom/meizu/settings/MzSettingsActivity;Lcom/meizu/settings/MzSettingsActivity$1;)V

    iput-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    .line 202
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    .line 203
    iput-boolean p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsShowingDashboard:Z

    .line 205
    iget-object p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast p2, Lflyme/support/v7/app/AppCompatActivity;

    invoke-static {p2}, Lcom/meizu/settings/utils/MzUtils;->setDecorViewBackground(Landroid/app/Activity;)V

    .line 206
    iget-object p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast p2, Lflyme/support/v7/app/AppCompatActivity;

    invoke-static {p2, v2}, Lcom/meizu/settings/utils/MzUtils;->setNavigationBarDarIcon(Landroid/app/Activity;Z)V

    .line 208
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsActivity;->showPermissionDialog()V

    .line 210
    iget-boolean p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsShowingDashboard:Z

    if-eqz p2, :cond_40c

    .line 211
    iget-object p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mPowerSaveObserver:Landroid/database/ContentObserver;

    invoke-static {p2, v0, v2}, Lcom/meizu/settings/utils/MzUtils;->setOnPowerModeChangeListener(Landroid/content/Context;Landroid/database/ContentObserver;Z)V

    .line 212
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object p1

    .line 213
    iget-object p2, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2, v1}, Lcom/meizu/settings/search/SearchFeatureProvider;->updateIndexAsync(Landroid/content/Context;Lcom/meizu/settings/search/IndexingCallback;)V

    .line 215
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result p1

    if-nez p1, :cond_409

    .line 216
    iget-object p1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->refreshRAngleAppListFromNetwork()V

    .line 219
    :cond_409
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsActivity;->initSimcard2Ringtone()V

    .line 222
    :cond_40c
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsActivity;->registerLocaleChangeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/MzSettingsActivity;)Landroid/content/Context;
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static initFilterDashboardTileList(Landroid/content/Context;)V
    .registers 3

    .line 239
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.schpwronoff.AlarmClock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 242
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.Settings$DateTimeSettingsActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.Settings$SimSettingsActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.Settings$StorageDashboardActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    const-string v0, "com.meizu.account"

    const-string v1, "com.meizu.account.ACCOUNTCENTER"

    .line 247
    invoke-static {p0, v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeAccountActivity"

    if-nez v0, :cond_3b

    .line 249
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 251
    :cond_3b
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_40
    const-string v0, "com.meizu.flymelab"

    .line 255
    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 256
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v1, "com.meizu.settings.MzSettingsActivity$FlymeLabActivity"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_4f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_62

    .line 260
    sget-object p0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v0, "com.meizu.settings.MzSettingsActivity$FlymeNfcSettingsActivity"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_62
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 263
    sget-object p0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    const-string v0, "com.meizu.settings.MzSettingsActivity$FlymeAicyActivity"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6f
    return-void
.end method

.method private initSimcard2Ringtone()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/media/MzRingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_12

    .line 228
    new-instance v0, Lcom/meizu/settings/MzSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/MzSettingsActivity$1;-><init>(Lcom/meizu/settings/MzSettingsActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public static needFilter(Lcom/android/settingslib/drawer/Tile;)Z
    .registers 2

    .line 528
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 530
    sget-object v0, Lcom/meizu/settings/MzSettingsActivity;->sFilterDashboardTile:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private registerLocaleChangeReceiver()V
    .registers 4

    .line 481
    iget-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsLocaleReceiverRegisted:Z

    if-nez v0, :cond_19

    .line 482
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/MzSettingsActivity;->mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 484
    iput-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsLocaleReceiverRegisted:Z

    :cond_19
    return-void
.end method

.method public static resetDashboardTile(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .registers 4

    .line 435
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_b

    return-object p1

    .line 438
    :cond_b
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$SecuritySettingsActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2e

    .line 440
    :cond_18
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.Settings$NetworkDashboardActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_2e

    .line 442
    :cond_25
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.google.android.gms.app.settings.GoogleSettingsLink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2e
    return-object p1
.end method

.method private showPermissionDialog()V
    .registers 7

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lflyme/support/v7/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    .line 284
    check-cast v0, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "create_fingerprint_from_pkg"

    .line 285
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.setup"

    .line 284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 287
    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast v1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_33

    const-string v0, "from_setupwizard"

    .line 290
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_33

    :cond_32
    move v0, v2

    .line 295
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v3, 0x1

    const-string/jumbo v4, "show_permission_dialog"

    .line 296
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4a

    if-nez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    move v3, v2

    :goto_4b
    if-eqz v3, :cond_8b

    .line 297
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_8b

    :cond_56
    const-string v0, "android.permission.INTERNET"

    const-string v3, "android.permission.READ_CONTACTS"

    .line 299
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v3, Lflyme/support/v7/app/PermissionDialogBuilder;

    iget-object v4, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-direct {v3, v4}, Lflyme/support/v7/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 302
    iget-object v4, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12139c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;[Ljava/lang/String;)Lflyme/support/v7/app/PermissionDialogBuilder;

    .line 303
    invoke-virtual {v3, v2}, Lflyme/support/v7/app/PermissionDialogBuilder;->setShowAlmostDenyBtn(Z)Lflyme/support/v7/app/PermissionDialogBuilder;

    .line 304
    new-instance v0, Lcom/meizu/settings/MzSettingsActivity$3;

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/MzSettingsActivity$3;-><init>(Lcom/meizu/settings/MzSettingsActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->setOnPermissionListener(Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;)Lflyme/support/v7/app/PermissionDialogBuilder;

    .line 320
    invoke-virtual {v3}, Lflyme/support/v7/app/PermissionDialogBuilder;->create()Lflyme/support/v7/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_8b
    :goto_8b
    return-void
.end method

.method private unRegisterLocaleChangeReceiver()V
    .registers 3

    .line 489
    iget-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsLocaleReceiverRegisted:Z

    if-eqz v0, :cond_12

    .line 490
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsLocaleReceiverRegisted:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public checkMetaData()V
    .registers 4

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_15

    goto :goto_1a

    :catch_15
    move-exception v0

    .line 605
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_6b

    .line 607
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_21

    goto :goto_6b

    .line 611
    :cond_21
    iget-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 612
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "guest_mode_no_display"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 613
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 618
    :cond_3b
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.meizu.settings.INTENT_ACTION"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 619
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.meizu.settings.INTENT_ACTION_TARGET_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 621
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 428
    :goto_2
    iget-object v2, p0, Lcom/meizu/settings/MzSettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 429
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return v0
.end method

.method public onBackPressed()Z
    .registers 1

    .line 567
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    if-eqz p0, :cond_9

    .line 568
    invoke-interface {p0}, Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;->onBackPressed()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public onDestroy()V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 504
    iput-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 506
    :cond_7
    iget-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_16

    .line 507
    invoke-static {}, Lcom/meizu/settings/applications/ApplicationsState;->removeInstance()V

    .line 508
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/MzSettingsActivity;->mPowerSaveObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/meizu/settings/utils/MzUtils;->setOnPowerModeChangeListener(Landroid/content/Context;Landroid/database/ContentObserver;Z)V

    .line 511
    :cond_16
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsActivity;->unRegisterLocaleChangeReceiver()V

    .line 512
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mPowerSaveObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1f

    .line 513
    iput-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mPowerSaveObserver:Landroid/database/ContentObserver;

    .line 515
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    if-eqz v0, :cond_25

    .line 516
    iput-object v1, p0, Lcom/meizu/settings/MzSettingsActivity;->mLocaleChangeReceiver:Lcom/meizu/settings/MzSettingsActivity$LocaleReceiver;

    :cond_25
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 545
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    if-eqz p0, :cond_c

    .line 546
    invoke-interface {p0, p1, p2}, Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 554
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    if-eqz p0, :cond_c

    .line 555
    invoke-interface {p0, p1, p2}, Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onStart()V
    .registers 2

    .line 474
    iget-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_f

    .line 475
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "Settings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 496
    iget-boolean v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mIsShowingDashboard:Z

    if-eqz v0, :cond_f

    .line 497
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "Settings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 585
    iget-object p0, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnWindowFocusChangedListener:Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;

    if-eqz p0, :cond_7

    .line 586
    invoke-interface {p0, p1}, Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;->onWindowFocusChanged(Z)V

    :cond_7
    return-void
.end method

.method public releaseOnKeyListener()V
    .registers 2

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    return-void
.end method

.method public setOnBackPressedListener(Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-void
.end method

.method public setOnKeyListener(Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;)V
    .registers 2

    .line 537
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnKeyListener:Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;

    return-void
.end method

.method public setOnWindowFocusChangedListener(Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;)V
    .registers 2

    .line 591
    iput-object p1, p0, Lcom/meizu/settings/MzSettingsActivity;->mOnWindowFocusChangedListener:Lcom/meizu/settings/MzSettingsActivity$OnWindowFocusChangedListener;

    return-void
.end method
