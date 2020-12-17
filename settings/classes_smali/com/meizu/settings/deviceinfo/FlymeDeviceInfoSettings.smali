.class public Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeDeviceInfoSettings.java"

# interfaces
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

.field private mBuildVersion:Landroidx/preference/Preference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

.field private mIsGuestUser:Z

.field private mNameEditText:Landroid/widget/EditText;

.field private mRootPreference:Landroid/preference/PreferenceScreen;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 413
    new-instance v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$8;

    invoke-direct {v0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$8;-><init>()V

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initDeviceName()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroidx/preference/Preference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildVersion:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/widget/EditText;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initAndroidVersion()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/Context;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V
    .registers 1

    .line 66
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->enterDeviceName()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/app/AlertDialog;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->clearErrorTips(Lcom/meizu/textinputlayout/TextInputLayout;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)Landroid/content/ContentResolver;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private checkIfNeedRemovePreference()V
    .registers 3

    const-string v0, "build_number"

    .line 130
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "security_patch"

    .line 131
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_17

    .line 135
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->showNAL()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_17
    const-string v1, "network_access_license"

    .line 136
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_1c
    if-nez v0, :cond_22

    .line 139
    iget-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mIsGuestUser:Z

    if-eqz v0, :cond_28

    :cond_22
    const-string/jumbo v0, "user_help"

    .line 140
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private checkIfServiceInfoIntent()V
    .registers 10

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 244
    sget-object v1, Lcom/meizu/settings/serviceinfo/Util;->PHONE_COOPERATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 246
    :goto_12
    sget-object v2, Lcom/meizu/settings/serviceinfo/Util;->PHONE_COOPERATE:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 247
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 248
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    const-class v0, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const v7, 0x7f121354

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void

    .line 252
    :cond_30
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "service_info"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 253
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-nez v1, :cond_45

    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_45
    if-eqz v0, :cond_4c

    .line 255
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4c
    return-void
.end method

.method private clearErrorTips(Lcom/meizu/textinputlayout/TextInputLayout;)V
    .registers 2

    .line 288
    invoke-virtual {p1}, Lcom/meizu/textinputlayout/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 290
    invoke-virtual {p1, p0}, Lcom/meizu/textinputlayout/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method private enterDeviceName()V
    .registers 7

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 300
    :cond_d
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 301
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 302
    iput-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    .line 304
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00dc

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0736

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/textinputlayout/TextInputLayout;

    const/4 v2, 0x0

    .line 306
    invoke-virtual {v1, v2}, Lcom/meizu/textinputlayout/TextInputLayout;->setErrorEnabled(Z)V

    const v3, 0x7f0a04c3

    .line 307
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    .line 308
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "meizu_device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    if-nez v3, :cond_4b

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_4b
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 313
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 314
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    new-instance v5, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;

    invoke-direct {v5, p0, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$4;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Lcom/meizu/textinputlayout/TextInputLayout;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120c89

    .line 349
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    .line 350
    new-instance v5, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;

    invoke-direct {v5, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$5;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v3, 0x1040000

    .line 370
    new-instance v5, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$6;

    invoke-direct {v5, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$6;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 377
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 378
    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$7;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 386
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 388
    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    .line 389
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 390
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_bf

    goto :goto_c0

    :cond_bf
    move v2, v4

    :goto_c0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private initAndroidVersion()V
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "no_fun"

    .line 202
    invoke-static {v1, v3, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 204
    invoke-static {v2, v3, v4}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 206
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    new-instance v4, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$2;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;Landroid/os/UserManager;ZLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const p0, 0x7f0a0094

    invoke-virtual {v3, p0, v4}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setItemViewOnClickListener(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initData()V
    .registers 4

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    .line 147
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 148
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mIsGuestUser:Z

    .line 152
    new-instance v0, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    const-string v2, "build_number"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    .line 153
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    new-instance v1, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;

    invoke-direct {v1}, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->setHost(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    .line 154
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildNumberPreferenceController:Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/BuildNumberPreferenceController;->onStart()V

    return-void
.end method

.method private initDeviceName()V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "meizu_device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    if-nez v0, :cond_e

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :cond_e
    const v2, 0x7f0a0559

    invoke-virtual {v1, v2, v0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setItemViewText(ILjava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    const v1, 0x7f0a055a

    new-instance v2, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$3;

    invoke-direct {v2, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$3;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setItemViewOnClickListener(ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDevicePreference()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    const-string v1, "firmware_version"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 160
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 161
    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 167
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "system_update_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 175
    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_30
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildVersion:Landroidx/preference/Preference;

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mBuildVersion:Landroidx/preference/Preference;

    const-string v1, "build_number"

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    const-string v1, "device_pre"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mFlymeDeviceInfoPreference:Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;

    new-instance v1, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$1;-><init>(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;)V

    invoke-virtual {v0, v1}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference;->setOnBindViewFinishedCallback(Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoPreference$OnBindViewFinishedCallback;)V

    return-void
.end method

.method private initPreference()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mRootPreference:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    .line 237
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initDevicePreference()V

    return-void
.end method

.method private startUserHelpApp()V
    .registers 3

    .line 282
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.meizu.feedback"

    .line 283
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x1

    .line 397
    :try_start_1
    invoke-static {}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->getInstance()Lcom/meizu/settings/utils/UnAcceptableCharChecker;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p1}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->checkEmojiString(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    :cond_d
    move v1, v2

    .line 401
    :goto_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_22

    .line 402
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Lcom/meizu/settings/utils/UnAcceptableCharChecker;->checkUnAcceptableChar(C)Z

    move-result v3
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_22

    if-ne v3, p0, :cond_1f

    return v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :catch_22
    :cond_22
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 96
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    .line 99
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    const/4 v2, 0x1

    .line 101
    invoke-virtual {p1, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 102
    invoke-virtual {p1, v2}, Lflyme/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, 0x4000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 105
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v3, -0x80000000

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f16009d

    .line 107
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initData()V

    .line 110
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->initPreference()V

    .line 111
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->checkIfServiceInfoIntent()V

    .line 112
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result p1

    if-nez p1, :cond_5e

    const-string p1, "firmware_version"

    .line 113
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 116
    :cond_5e
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->checkIfNeedRemovePreference()V

    .line 118
    invoke-virtual {p0, v2}, Lcom/meizu/settings/SettingsPreferenceFragment;->setHideTitle(Z)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setCanScrollOnTop(Z)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setCustomActionBarBackgroundResId(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceInfoSettings"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 274
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user_help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 275
    invoke-direct {p0}, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->startUserHelpApp()V

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 2

    .line 267
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 268
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "DeviceInfoSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 261
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 262
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "DeviceInfoSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 125
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
