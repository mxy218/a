.class public Lcom/meizu/settings/face/FlymeFaceManagementFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeFaceManagementFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFaceDataRemovePreference:Landroid/preference/Preference;

.field private mFaceOpenRaiseuptipsPreference:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

.field private mFaceReSaveFeaturePreference:Landroid/preference/Preference;

.field private mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

.field private mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

.field private mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mNeedCreateFace:Z

.field private mPasswordConfirmed:Z

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mPasswordConfirmed:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceOpenRaiseuptipsPreference:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Z)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->removeFaceData(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/settings/face/FlymeFaceManagementFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->startCreateFaceActivity()V

    return-void
.end method

.method private checkPasswordConfirm()V
    .registers 8

    .line 381
    iget-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mPasswordConfirmed:Z

    if-nez v0, :cond_43

    .line 382
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isScreenPasswordEnalbed()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 383
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    const-string v1, "password_from"

    .line 384
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "verify_password_tips"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_key_fingerprint_support"

    .line 390
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    const-string v1, "create_biometric"

    .line 391
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    const-class v0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120ff3

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_43

    :cond_3f
    const/4 v0, 0x3

    .line 396
    invoke-direct {p0, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->startEnterPasswordFragment(I)V

    :cond_43
    :goto_43
    return-void
.end method

.method private confirmReSaveFeatureFaceData()V
    .registers 3

    .line 364
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120d7a

    .line 365
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 366
    new-instance v1, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment$3;-><init>(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V

    const p0, 0x7f120d79

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120bfb

    const/4 v1, 0x0

    .line 375
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 377
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private confirmRemoveFaceData()V
    .registers 3

    .line 328
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120d7b

    .line 329
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 330
    new-instance v1, Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment$2;-><init>(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V

    const p0, 0x7f12136d

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p0, 0x7f120bfb

    const/4 v1, 0x0

    .line 338
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 339
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 340
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getFaceUnlockSwitch(Ljava/lang/String;)Z
    .registers 3

    .line 177
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_f

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    return p1
.end method

.method private getIsNeedCreateFace()Z
    .registers 3

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "mz_face_management_added_data"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private initFaceOpenRaiseUpPreference()V
    .registers 6

    const-string v0, "face_open_raiseup_tips"

    .line 103
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceOpenRaiseuptipsPreference:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    .line 104
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeLabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeLabHelper;->hasRaiseFlipFeature()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_46

    .line 105
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "flipwakeup_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_28

    move v0, v1

    goto :goto_29

    :cond_28
    move v0, v2

    .line 106
    :goto_29
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "raisewakeup_switch"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_37

    move v3, v1

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    or-int/2addr v0, v3

    if-nez v0, :cond_46

    .line 107
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->supportRaiseFlipFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_47

    :cond_46
    move v1, v2

    .line 108
    :goto_47
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceOpenRaiseuptipsPreference:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    new-instance v2, Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment$1;-><init>(Lcom/meizu/settings/face/FlymeFaceManagementFragment;)V

    invoke-virtual {v0, v2}, Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-nez v1, :cond_5c

    .line 115
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceOpenRaiseuptipsPreference:Lcom/meizu/settings/face/FaceOpenRaiseuptipsPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5c
    return-void
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "mz_face_unlock_screen_switch"

    .line 89
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mz_face_unlock_app_switch"

    .line 90
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mz_face_unlock_document_switch"

    .line 91
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mz_face_unlock_screen_settings_switch"

    .line 92
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "mz_face_unlock_screen_brightness"

    .line 93
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "face_unlock_screen_settings_switch_summary"

    .line 95
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 96
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mz_face_management_resavefeature"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceReSaveFeaturePreference:Landroid/preference/Preference;

    .line 97
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "mz_face_management_settings_remove"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceDataRemovePreference:Landroid/preference/Preference;

    .line 99
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->initFaceOpenRaiseUpPreference()V

    return-void
.end method

.method private initValues()V
    .registers 5

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUserId:I

    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    .line 185
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    .line 186
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    .line 187
    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    .line 189
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    .line 185
    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 191
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 192
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    .line 193
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 192
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 194
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_60

    .line 201
    :cond_5d
    iput v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUserId:I

    goto :goto_77

    .line 197
    :cond_60
    :goto_60
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 198
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_69

    goto :goto_71

    .line 199
    :cond_69
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 198
    :goto_71
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUserId:I

    .line 204
    :goto_77
    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mMzLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 206
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 207
    new-instance v0, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;

    iget-object v1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/settings/face/FlymeFaceRecognitionImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    return-void
.end method

.method private removeFaceData(Z)V
    .registers 6

    .line 344
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/face/FaceUtil;->updateFaceRecognitonAddedDataState(Landroid/content/Context;Z)V

    const-string v0, "mz_face_unlock"

    .line 345
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v0, "mz_face_unlock_app"

    .line 346
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    const-string v0, "mz_face_unlock_document"

    .line 347
    invoke-direct {p0, v1, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 349
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->getMzFaceAllowPrivateNotification(Landroid/content/Context;)I

    move-result v0

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MzFaceAllowPrivateNotification value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeFaceManagementFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    .line 352
    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v0}, Lcom/meizu/settings/face/FaceUtil;->reportShowNotificationOnLockscreenData(Landroid/content/Context;Ljava/lang/String;I)V

    .line 354
    :cond_43
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 355
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 356
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 357
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    invoke-interface {v0}, Lcom/meizu/settings/face/FlymeIFaceRecognition;->deleteFaceMetadatas()V

    if-eqz p1, :cond_5e

    .line 359
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5e
    return-void
.end method

.method private reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 423
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string p2, "FlymeFaceManagementFragment"

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private setFaceUnlock(ZLjava/lang/String;)V
    .registers 3

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setNotificationContentShowOnLockScreen(Z)V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/meizu/settings/face/FaceUtil;->updateMzFaceAllowPrivateNotification(Landroid/content/Context;I)V

    .line 279
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->isSettingsLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/face/FaceUtil;->settingsOnLockScreenAllowPrivateNotificationByUser(Landroid/content/Context;)V

    .line 281
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/meizu/settings/face/FaceUtil;->updateSettingsLockScreenAllowPrivateNotificationBefore(Landroid/content/Context;I)V

    :cond_17
    return-void
.end method

.method private startCreateFaceActivity()V
    .registers 5

    .line 410
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 411
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "password_confirmed"

    const/4 v3, 0x1

    .line 412
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "create_face_bundle"

    .line 413
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 414
    iget v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3ea

    .line 416
    invoke-virtual {p0, v1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string p0, "FlymeFaceManagementFragment"

    const-string v0, "startCreateFaceActivity"

    .line 418
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startEnterPasswordFragment(I)V
    .registers 8

    .line 402
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "password_from"

    const/4 v1, 0x0

    .line 403
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 405
    const-class v0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120ff3

    move-object v0, p0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateFaceScreenBrightnessSetting()V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_21

    .line 149
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_26

    .line 147
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 152
    :goto_26
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_face_screen_brightness"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_36

    move v0, v2

    goto :goto_37

    :cond_36
    move v0, v1

    .line 155
    :goto_37
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_49
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_4d
    const-string v1, "face_screen_brightness"

    const-string v2, "value"

    .line 157
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreference()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "mz_face_unlock"

    invoke-direct {p0, v1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getFaceUnlockSwitch(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "mz_face_unlock_app"

    invoke-direct {p0, v1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getFaceUnlockSwitch(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v1, "mz_face_unlock_document"

    invoke-direct {p0, v1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getFaceUnlockSwitch(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 124
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateUnlockScreenSettinglauncher()V

    .line 125
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateFaceScreenBrightnessSetting()V

    return-void
.end method

.method private updateUnlockScreenSettinglauncher()V
    .registers 5

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_15

    .line 132
    :cond_10
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 135
    :goto_15
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mz_face_unlock_screen_launcher"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 138
    :goto_26
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_38
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    const-string v1, "stay_lock_screen"

    const-string v2, "value"

    .line 140
    invoke-direct {p0, v1, v2, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const-string v4, "face_recognition"

    const/4 v5, 0x3

    if-ne p1, v5, :cond_35

    const-string p1, "value"

    const-string p3, "face_password_verify"

    if-nez p2, :cond_1c

    .line 244
    iget-object p2, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 246
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-direct {p0, p3, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_1c
    if-ne p2, v2, :cond_67

    .line 248
    iput-boolean v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mPasswordConfirmed:Z

    .line 249
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getIsNeedCreateFace()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 250
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->startCreateFaceActivity()V

    goto :goto_2d

    .line 252
    :cond_2a
    invoke-direct {p0, v4, v4, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2d
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-direct {p0, p3, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    :cond_35
    const/16 v5, 0x3ea

    if-ne p1, v5, :cond_67

    if-ne p2, v2, :cond_52

    if-eqz p3, :cond_4e

    .line 260
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getIsNeedCreateFace()Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 261
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 262
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_5e

    .line 264
    :cond_4e
    invoke-direct {p0, v4, v4, v0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_52
    if-nez p2, :cond_5e

    .line 268
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 269
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_5e
    :goto_5e
    const-string p1, "FlymeFaceManagementFragment"

    const-string p2, "onActivityResult REQUEST_CODE_BIND_FACEMANAGERMENT"

    .line 271
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-boolean v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mPasswordConfirmed:Z

    :cond_67
    :goto_67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 80
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    const p1, 0x7f1600a5

    .line 83
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 84
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->initValues()V

    .line 85
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->initPreference()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .line 218
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFlymeIFaceRecognition:Lcom/meizu/settings/face/FlymeIFaceRecognition;

    const-string p0, "FlymeFaceManagementFragment"

    const-string v0, "onDestroyView"

    .line 221
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 236
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mPasswordConfirmed:Z

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 287
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "value"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, p1, :cond_45

    .line 288
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setNotificationContentShowOnLockScreen(Z)V

    .line 289
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string p2, "mz_face_unlock"

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 290
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateUnlockScreenSettinglauncher()V

    .line 293
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    :cond_37
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_3b
    const-string p2, "screen_unlock"

    .line 291
    invoke-direct {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateFaceScreenBrightnessSetting()V

    goto/16 :goto_107

    .line 295
    :cond_45
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_6d

    .line 296
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string p2, "mz_face_unlock_app"

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockAppSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5f

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_63

    :cond_5f
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_63
    const-string p2, "unlock_password_control"

    .line 297
    invoke-direct {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateFaceScreenBrightnessSetting()V

    goto/16 :goto_107

    .line 301
    :cond_6d
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_95

    .line 302
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string p2, "mz_face_unlock_document"

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnlockDocumentSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_87

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_8b

    :cond_87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_8b
    const-string p2, "unlock_file_manager"

    .line 303
    invoke-direct {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updateFaceScreenBrightnessSetting()V

    goto/16 :goto_107

    .line 307
    :cond_95
    iget-object v3, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v3, :cond_d4

    .line 308
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a9

    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a9

    move p1, v2

    goto :goto_aa

    :cond_a9
    move p1, v1

    :goto_aa
    invoke-direct {p0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setNotificationContentShowOnLockScreen(Z)V

    .line 309
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_b7

    move p1, v2

    goto :goto_b8

    :cond_b7
    move p1, v1

    :goto_b8
    const-string p2, "mz_face_unlock_screen_launcher"

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceUnStayOnLockScreenSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-nez p1, :cond_ca

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_ce

    :cond_ca
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_ce
    const-string p2, "stay_lock_screen"

    .line 310
    invoke-direct {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107

    .line 313
    :cond_d4
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceReSaveFeaturePreference:Landroid/preference/Preference;

    if-ne p2, p1, :cond_dc

    .line 314
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->confirmReSaveFeatureFaceData()V

    goto :goto_107

    .line 315
    :cond_dc
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceDataRemovePreference:Landroid/preference/Preference;

    if-ne p2, p1, :cond_e4

    .line 316
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->confirmRemoveFaceData()V

    goto :goto_107

    .line 317
    :cond_e4
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, p1, :cond_107

    .line 318
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string p2, "mz_face_screen_brightness"

    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->setFaceUnlock(ZLjava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mFaceScreenBrightness:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_fe

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_102

    :cond_fe
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_102
    const-string p2, "face_screen_brightness"

    .line 319
    invoke-direct {p0, p2, v0, p1}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->reportFlymeFaceManagerData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_107
    :goto_107
    return v2
.end method

.method public onResume()V
    .registers 3

    .line 226
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    const-string v0, "FlymeFaceManagementFragment"

    const-string v1, "onResume"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->getIsNeedCreateFace()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->mNeedCreateFace:Z

    .line 229
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->updatePreference()V

    .line 231
    invoke-direct {p0}, Lcom/meizu/settings/face/FlymeFaceManagementFragment;->checkPasswordConfirm()V

    return-void
.end method

.method public onStart()V
    .registers 1

    .line 212
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    return-void
.end method
