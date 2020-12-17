.class public Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "FlymeScreenPasscodeSettings.java"


# instance fields
.field private mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

.field private mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

.field private mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

.field private mFromSetNewPassword:Z

.field private mHasEnrollFingerprints:Z

.field private mHasFaceData:Z

.field private mIsLocked:Z

.field private mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenNoLock:Lcom/meizu/settings/widget/PreferenceWithViewId;

.field private mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

.field private mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

.field private mLockScreenType:I

.field private mPasswordConfirmed:Z

.field private mRequirePwdWhenDeviceBoot:Z

.field private mSetPasswordFrom:I

.field private mSetPaswordFromWhichPkg:Ljava/lang/String;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disablePasswordInternal(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasFaceData:Z

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->removeFaceData()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;)Z
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasEnrollFingerprints:Z

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->removeFingerprints(Z)V

    return-void
.end method

.method private checkIfSetNewPassword()V
    .registers 7

    .line 375
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mPasswordConfirmed:Z

    if-eqz v0, :cond_5

    return-void

    .line 377
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_10

    return-void

    .line 380
    :cond_10
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_31

    const-string v2, "com.android.settings.SETUP_LOCK_SCREEN"

    .line 382
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_31

    :cond_2f
    move v1, v3

    goto :goto_32

    :cond_31
    :goto_31
    move v1, v4

    .line 384
    :goto_32
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v5, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    invoke-virtual {v2, v5}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isPasswordEnabled(I)Z

    move-result v2

    const/4 v5, 0x3

    if-eqz v1, :cond_56

    const-string v1, "set_new_password_from_pkg"

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPaswordFromWhichPkg:Ljava/lang/String;

    .line 387
    iput-boolean v4, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFromSetNewPassword:Z

    if-eqz v2, :cond_4d

    .line 389
    invoke-direct {p0, v5}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startConfirmPassword(I)V

    goto :goto_5f

    .line 390
    :cond_4d
    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    if-eqz v0, :cond_5f

    const/4 v0, 0x2

    .line 391
    invoke-direct {p0, v3, v0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startCreatePassword(ZI)V

    goto :goto_5f

    .line 395
    :cond_56
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mPasswordConfirmed:Z

    if-nez v0, :cond_5f

    if-eqz v2, :cond_5f

    .line 396
    invoke-direct {p0, v5}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startConfirmPassword(I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method private disablePassword(Z)V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    .line 272
    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_6f

    .line 277
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 282
    :cond_20
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasFaceData:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasEnrollFingerprints:Z

    if-eqz v0, :cond_2c

    const v0, 0x7f120b43

    goto :goto_3f

    .line 284
    :cond_2c
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasFaceData:Z

    if-eqz v0, :cond_34

    const v0, 0x7f120b41

    goto :goto_3f

    .line 286
    :cond_34
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasEnrollFingerprints:Z

    if-eqz v0, :cond_3c

    const v0, 0x7f120b42

    goto :goto_3f

    :cond_3c
    const v0, 0x7f120b40

    .line 292
    :goto_3f
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b44

    .line 293
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f120b3f

    .line 295
    new-instance v2, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$2;-><init>(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f120bfb

    const/4 v0, 0x0

    .line 309
    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

    .line 311
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 273
    :cond_6f
    :goto_6f
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disablePasswordInternal(Z)V

    return-void
.end method

.method private disablePasswordInternal(Z)V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Ljava/lang/String;Z)V

    .line 316
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 317
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZ[B)V

    .line 319
    :cond_1d
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 320
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 321
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 322
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    .line 323
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 324
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3f
    return-void
.end method

.method private disableUnusablePreferences()V
    .registers 9

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "device_policy"

    .line 186
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 187
    iget v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    .line 189
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    .line 188
    invoke-static {v2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 190
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_23
    if-ltz v2, :cond_60

    .line 191
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 192
    instance-of v5, v4, Lcom/meizu/settings/widget/RestrictedPreference;

    if-eqz v5, :cond_5d

    .line 193
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lock_screen_no_lock"

    .line 195
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_51

    const-string v6, "lock_screen_slide"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    goto :goto_51

    :cond_43
    const-string v6, "lock_screen_password"

    .line 198
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    const/high16 v5, 0x60000

    if-le v1, v5, :cond_54

    :goto_4f
    move v7, v3

    goto :goto_54

    :cond_51
    :goto_51
    if-lez v1, :cond_54

    goto :goto_4f

    :cond_54
    :goto_54
    if-eqz v7, :cond_5d

    if-eqz p0, :cond_5d

    .line 203
    check-cast v4, Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {v4, p0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_5d
    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    :cond_60
    return-void
.end method

.method private handleLockScreenPasswordClick()V
    .registers 1

    .line 237
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startCreatePassword()V

    return-void
.end method

.method private handleOwnerInfoPrefInCts()V
    .registers 3

    const-string v0, "owner_info_settings"

    .line 211
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedPreference;

    .line 213
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 214
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    return-void

    :cond_1a
    if-eqz v0, :cond_38

    .line 219
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 220
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 221
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 223
    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_38
    return-void
.end method

.method private init()V
    .registers 5

    .line 115
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 120
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 116
    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 122
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 123
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_50

    .line 130
    :cond_4d
    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    goto :goto_6d

    .line 126
    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v0, :cond_5b

    goto :goto_67

    .line 128
    :cond_5b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 127
    :goto_67
    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    .line 133
    :goto_6d
    new-instance v0, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 134
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 135
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 137
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "password_from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    .line 140
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->initPreference()V

    return-void
.end method

.method private initPreference()V
    .registers 4

    const v0, 0x7f1600db

    .line 144
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    const-string v0, "custom_password_settings"

    .line 147
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "bluetooth_unlock"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "allow_use_sms_dialer"

    .line 153
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.meizu.voiceassistant"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "com.meizu.voiceassistant.action.VOICE_SETTING"

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_5a

    .line 160
    :cond_41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "voice_assistent_use_in_lockscreen"

    .line 159
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_54

    move v1, v2

    .line 162
    :cond_54
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_61

    .line 157
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :goto_61
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_screen_no_lock"

    .line 166
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/PreferenceWithViewId;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenNoLock:Lcom/meizu/settings/widget/PreferenceWithViewId;

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_screen_slide"

    .line 168
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/PreferenceWithViewId;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

    const v1, 0x7f0a03cf

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/PreferenceWithViewId;->setViewId(I)V

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "lock_screen_password"

    .line 172
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/PreferenceWithViewId;

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

    const v1, 0x7f0a03d1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/PreferenceWithViewId;->setViewId(I)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_ac

    .line 177
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 180
    :cond_ac
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disableUnusablePreferences()V

    return-void
.end method

.method private removeFaceData()V
    .registers 1

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/face/FaceUtil;->clearFaceData(Landroid/content/Context;)V

    return-void
.end method

.method private removeFingerprints(Z)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    new-instance v1, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings$1;-><init>(Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;Z)V

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    .line 267
    invoke-interface {p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object p0

    .line 262
    invoke-interface {v0, v1, p0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->deleteFingerPrints(Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;[I)V

    return-void
.end method

.method private startConfirmPassword(I)V
    .registers 8

    .line 329
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 330
    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    const-string v1, "password_from"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 333
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120ff3

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private startCreatePassword()V
    .registers 4

    .line 229
    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenType:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startCreatePassword(ZI)V

    goto :goto_f

    :cond_b
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startCreatePassword(ZI)V

    :goto_f
    return-void
.end method

.method private startCreatePassword(ZI)V
    .registers 9

    .line 339
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 342
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordType(I)I

    move-result v0

    const/4 p1, 0x1

    const-string v1, "modfiySystemPassword"

    .line 343
    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 346
    :cond_14
    iget p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    const-string v1, "password_from"

    invoke-virtual {v5, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "extra_key_password_type"

    .line 348
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPaswordFromWhichPkg:Ljava/lang/String;

    const-string v0, "set_new_password_from_pkg"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 351
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mRequirePwdWhenDeviceBoot:Z

    const-string v0, "require_pwd_when_device_boot"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    const-string v0, "flyme_password"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-class p1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mSetPasswordFrom:I

    .line 354
    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getPasswordFromTitleResId(I)I

    move-result v3

    move-object v0, p0

    move-object v1, p0

    move v4, p2

    .line 353
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateCurrentLockScreenSummary()V
    .registers 5

    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mIsLocked:Z

    .line 415
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenNoLock:Lcom/meizu/settings/widget/PreferenceWithViewId;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isLockScreenDisabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const v3, 0x7f120b25

    if-eqz v1, :cond_2f

    .line 419
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenNoLock:Lcom/meizu/settings/widget/PreferenceWithViewId;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 420
    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenType:I

    .line 421
    iput-boolean v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mIsLocked:Z

    return-void

    .line 424
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    iget v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_64

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_72

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_54

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_54

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_54

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_54

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_54

    const/high16 p0, 0x80000

    goto :goto_72

    .line 433
    :cond_54
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

    const v1, 0x7f120b24

    .line 434
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 435
    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenType:I

    goto :goto_72

    .line 440
    :cond_64
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    .line 441
    iput v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenType:I

    .line 442
    iput-boolean v2, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mIsLocked:Z

    :cond_72
    :goto_72
    return-void
.end method

.method private updatePreference()V
    .registers 3

    .line 404
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->updateCurrentLockScreenSummary()V

    .line 405
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    iget-boolean v1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mIsLocked:Z

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 406
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->handleOwnerInfoPrefInCts()V

    .line 407
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1e

    .line 408
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mCustomSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1e
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_23

    if-ne p2, v1, :cond_23

    .line 453
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Z)V

    .line 454
    new-instance p1, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserId:I

    invoke-direct {p1, p2, p0}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;I)V

    .line 455
    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 456
    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 457
    invoke-interface {p1, v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 458
    invoke-interface {p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    goto :goto_87

    :cond_23
    const-string v2, "flyme_password"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_36

    if-ne p2, v1, :cond_36

    if-eqz p3, :cond_87

    .line 463
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    .line 464
    invoke-direct {p0, v3, v1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->startCreatePassword(ZI)V

    goto :goto_87

    :cond_36
    const/4 v4, 0x2

    if-ne p1, v4, :cond_72

    .line 467
    iget-boolean p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFromSetNewPassword:Z

    if-eqz p1, :cond_56

    if-ne p2, v1, :cond_47

    .line 469
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_4e

    .line 471
    :cond_47
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 473
    :goto_4e
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_87

    :cond_56
    if-ne p2, v1, :cond_87

    .line 476
    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mPasswordConfirmed:Z

    .line 477
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {p1, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnableAndDisableSecretsModeIfNeed(Z)V

    .line 478
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f120b45

    invoke-static {p1, p2, p3, v0}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 480
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_87

    :cond_72
    const/4 v0, 0x3

    if-ne p1, v0, :cond_87

    if-ne p2, v1, :cond_80

    .line 485
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUserPassword:Ljava/lang/String;

    .line 486
    iput-boolean v3, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mPasswordConfirmed:Z

    goto :goto_87

    .line 488
    :cond_80
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_87
    :goto_87
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->init()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screenPasscode"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 243
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_28

    .line 244
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mAllowUseSmsAndDialer:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_22

    move v1, v2

    :cond_22
    const-string v2, "voice_assistent_use_in_lockscreen"

    .line 244
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3f

    .line 247
    :cond_28
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenNoLock:Lcom/meizu/settings/widget/PreferenceWithViewId;

    if-ne p2, v0, :cond_30

    .line 248
    invoke-direct {p0, v2}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disablePassword(Z)V

    goto :goto_3f

    .line 249
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenSlide:Lcom/meizu/settings/widget/PreferenceWithViewId;

    if-ne p2, v0, :cond_38

    .line 250
    invoke-direct {p0, v1}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->disablePassword(Z)V

    goto :goto_3f

    .line 251
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mLockScreenPassword:Lcom/meizu/settings/widget/PreferenceWithViewId;

    if-ne p2, v0, :cond_3f

    .line 252
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->handleLockScreenPasswordClick()V

    .line 254
    :cond_3f
    :goto_3f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    .line 360
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 362
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 363
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 367
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mFlymeIFingerPrint:Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasEnrollFingerprints:Z

    .line 368
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->isFaceDataExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mHasFaceData:Z

    .line 370
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->updatePreference()V

    .line 371
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->checkIfSetNewPassword()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 100
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 101
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "screenPasscode"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 106
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "screenPasscode"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 110
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeScreenPasscodeSettings;->mDiableScreenLockWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_19
    return-void
.end method
