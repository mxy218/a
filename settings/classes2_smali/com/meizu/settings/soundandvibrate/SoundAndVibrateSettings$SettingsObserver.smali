.class final Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SoundAndVibrateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final HAPTIC_FEEDBACK_URI:Landroid/net/Uri;

.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    .line 504
    invoke-static {p1}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1600(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$H;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "vibrate_when_ringing"

    .line 499
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const-string p1, "haptic_feedback_enabled"

    .line 501
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->HAPTIC_FEEDBACK_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 518
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 519
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 520
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1800(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V

    :cond_10
    return-void
.end method

.method public register(Z)V
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {v0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1700(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_f

    .line 510
    iget-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$SettingsObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_12

    .line 512
    :cond_f
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_12
    return-void
.end method
