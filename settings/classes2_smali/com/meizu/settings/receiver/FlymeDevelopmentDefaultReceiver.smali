.class public Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FlymeDevelopmentDefaultReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    const-string v0, "FlymeDevelopmentDefaultReceiver"

    const-string v1, "onReceive: "

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.meizu.action.DEVELOPMENT_DEFAULT"

    .line 48
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ea

    .line 50
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "data_file"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v1, "development_fragment_on_screen"

    .line 52
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const v1, 0x7f1211bb

    const/4 v2, 0x0

    .line 55
    invoke-static {p1, v2, v1, v0}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    if-eqz p2, :cond_3e

    .line 59
    iget-object p0, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "close_developer_option"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    .line 64
    :cond_3e
    iget-object p1, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "stay_on_while_plugged_in"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "debug.hwui.show_dirty_regions"

    .line 67
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "debug.hwui.show_layers_updates"

    .line 69
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    const-string p2, "debug.hwui.overdraw"

    .line 71
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "show_touches"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "pointer_location"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    const-string v1, "show_screen_updates"

    invoke-static {p2, v1}, Lcom/meizu/settings/utils/MzUtils;->restorePreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_84

    .line 79
    new-instance p2, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;

    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p2, v0}, Lcom/android/settings/development/ShowSurfaceUpdatesPreferenceController;->writeShowUpdatesSetting(Z)V

    .line 85
    :cond_84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Landroid/sysprop/DisplayProperties;->debug_layout(Ljava/lang/Boolean;)V

    .line 87
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "debug.force_rtl"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 90
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    .line 92
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "overlay_display_devices"

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 95
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    iget-object p2, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "usb_audio_automatic_routing_disabled"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    new-instance p2, Lcom/android/settings/development/StrictModePreferenceController;

    iget-object v1, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1}, Lcom/android/settings/development/StrictModePreferenceController;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p2, v0}, Lcom/android/settings/development/StrictModePreferenceController;->writeStrictModeVisualOptions(Z)V

    const-string p2, "debug.hwui.profile"

    .line 106
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/receiver/FlymeDevelopmentDefaultReceiver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->clearDevelopmentValue(Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    :cond_ea
    return-void
.end method
