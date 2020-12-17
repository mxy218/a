.class public Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;
.super Lcom/meizu/settings/MzSettingsPreferenceFragment;
.source "NavigationBarClassicsGestureActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClassicsGestureFragment"
.end annotation


# instance fields
.field private mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

.field private mOverlayManager:Landroid/content/om/IOverlayManager;

.field private mScreenOff:Lcom/meizu/common/preference/SwitchPreference;

.field private mSideSwipe:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Lcom/meizu/settings/MzSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreference()V
    .registers 7

    .line 163
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121051

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121050

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "system_nav_mback"

    .line 168
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "mback_side_slip_gesture"

    .line 169
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    move v3, v5

    :goto_37
    const-string v4, "mback_long_press_screen_off"

    .line 170
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v0, "mback_gesture"

    .line 172
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

    .line 173
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "swipe_to_go_back_from_screen_sides"

    .line 177
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mSideSwipe:Lcom/meizu/common/preference/SwitchPreference;

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mSideSwipe:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mSideSwipe:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "long_heavy_press_to_turn_screen_off"

    .line 181
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mScreenOff:Lcom/meizu/common/preference/SwitchPreference;

    .line 186
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mScreenOff:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private setNavBarInteractionMode(Ljava/lang/String;)V
    .registers 4

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNavBarInteractionMode: overlayPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClassicsGestureActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :try_start_16
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const/4 v0, -0x2

    invoke-interface {p0, p1, v0}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 195
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 130
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "overlay"

    .line 132
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 133
    invoke-direct {p0}, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->initPreference()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const p1, 0x7f1600ab

    .line 125
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: pre="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClassicsGestureActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mMBackGesture:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_4e

    .line 142
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string v0, "mz_current_navigation_mode"

    if-eqz p1, :cond_3c

    const-string p1, "com.android.internal.systemui.navbar.twobutton"

    .line 143
    invoke-direct {p0, p1}, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->setNavBarInteractionMode(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4d

    :cond_3c
    const-string p1, "com.android.internal.systemui.navbar.gestural"

    .line 147
    invoke-direct {p0, p1}, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->setNavBarInteractionMode(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_4d
    return v2

    .line 151
    :cond_4e
    iget-object v1, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mSideSwipe:Lcom/meizu/common/preference/SwitchPreference;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_60

    .line 152
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_5a

    move v3, v2

    :cond_5a
    const-string p0, "mback_side_slip_gesture"

    invoke-static {v0, p0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    .line 154
    :cond_60
    iget-object p0, p0, Lcom/meizu/settings/gesture/NavigationBarClassicsGestureActivity$ClassicsGestureFragment;->mScreenOff:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p1, p0, :cond_71

    .line 155
    invoke-virtual {p0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_6b

    move v3, v2

    :cond_6b
    const-string p0, "mback_long_press_screen_off"

    invoke-static {v0, p0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_71
    return v3
.end method
