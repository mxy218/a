.class public Lcom/meizu/settings/security/ScreenPinningSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field private static final KEY_SCREEN_LOCK_SWITCH:Ljava/lang/CharSequence;

.field private static final KEY_SCREEN_LOCK_TIPS:Ljava/lang/CharSequence;

.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTips:Landroid/preference/Preference;

.field private mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "use_screen_lock"

    .line 60
    sput-object v0, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    const-string v0, "screen_lock_switch"

    .line 67
    sput-object v0, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_SCREEN_LOCK_SWITCH:Ljava/lang/CharSequence;

    const-string v0, "screen_lock_tips"

    .line 68
    sput-object v0, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_SCREEN_LOCK_TIPS:Ljava/lang/CharSequence;

    .line 249
    new-instance v0, Lcom/meizu/settings/security/ScreenPinningSettings$2;

    invoke-direct {v0}, Lcom/meizu/settings/security/ScreenPinningSettings$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/security/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/ScreenPinningSettings;Z)Z
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .registers 1

    .line 57
    invoke-static {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private getCurrentSecurityTitle()I
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2f

    const/high16 p0, 0x20000

    if-eq v0, p0, :cond_2b

    const/high16 p0, 0x30000

    if-eq v0, p0, :cond_2b

    const/high16 p0, 0x40000

    if-eq v0, p0, :cond_27

    const/high16 p0, 0x50000

    if-eq v0, p0, :cond_27

    const/high16 p0, 0x60000

    if-eq v0, p0, :cond_27

    const/high16 p0, 0x80000

    if-eq v0, p0, :cond_27

    goto :goto_3f

    :cond_27
    const p0, 0x7f121242

    return p0

    :cond_2b
    const p0, 0x7f121244

    return p0

    .line 192
    :cond_2f
    iget-object p0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_3f

    const p0, 0x7f121243

    return p0

    :cond_3f
    :goto_3f
    const p0, 0x7f121241

    return p0
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lock_to_app_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isScreenLockUsed()Z
    .registers 5

    .line 135
    invoke-direct {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f121241

    if-eq v0, v3, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 136
    :goto_e
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "lock_to_app_exit_locked"

    invoke-static {p0, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1
.end method

.method private setLockToAppEnabled(Z)V
    .registers 4

    .line 126
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_12

    .line 130
    invoke-direct {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    :cond_12
    return-void
.end method

.method private setScreenLockUsed(Z)Z
    .registers 4

    if-eqz p1, :cond_2a

    .line 142
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-nez v0, :cond_2a

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000

    const-string v1, "minimum_quality"

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x2b

    .line 150
    invoke-virtual {p0, p1, v0}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x0

    return p0

    .line 154
    :cond_2a
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private setScreenLockUsedSetting(Z)V
    .registers 3

    .line 159
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_exit_locked"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 83
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 86
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUserId:I

    .line 88
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUserId:I

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;I)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockPasswordUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2b

    if-ne p1, p2, :cond_27

    .line 167
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 168
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 171
    :goto_1d
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz p0, :cond_27

    .line 174
    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    :cond_27
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_e

    .line 284
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/security/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 285
    invoke-virtual {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->updateDisplay()V

    .line 287
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 292
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 293
    invoke-virtual {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->updateDisplay()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .registers 3

    .line 204
    invoke-direct {p0, p2}, Lcom/meizu/settings/security/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->updateDisplay()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 100
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateDisplay()V
    .registers 3

    .line 209
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    if-nez v1, :cond_37

    :cond_c
    if-eqz v0, :cond_11

    .line 212
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_11
    const v0, 0x7f1600dc

    .line 214
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_SCREEN_LOCK_SWITCH:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 217
    sget-object v1, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v1, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    .line 218
    sget-object v1, Lcom/meizu/settings/security/ScreenPinningSettings;->KEY_SCREEN_LOCK_TIPS:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockTips:Landroid/preference/Preference;

    .line 220
    :cond_37
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 221
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    new-instance v1, Lcom/meizu/settings/security/ScreenPinningSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/security/ScreenPinningSettings$1;-><init>(Lcom/meizu/settings/security/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setTitle(I)V

    .line 228
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_6b

    .line 233
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mScreenLockSwitch:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    .line 237
    :goto_6b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockTips:Landroid/preference/Preference;

    const v1, 0x7f12123f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_86

    .line 240
    :cond_7e
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mLockTips:Landroid/preference/Preference;

    const v1, 0x7f12123e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 243
    :goto_86
    iget-object v0, p0, Lcom/meizu/settings/security/ScreenPinningSettings;->mUseScreenLock:Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
