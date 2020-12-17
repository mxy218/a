.class final Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VibrateWhenRingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VibrateWhenRingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;Landroidx/preference/Preference;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    .line 112
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "vibrate_when_ringing"

    .line 107
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 113
    iput-object p2, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 127
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_12
    return-void
.end method

.method public register(Z)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->access$000(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_13

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_16

    .line 121
    :cond_13
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_16
    return-void
.end method
