.class Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$4;
.super Ljava/lang/Object;
.source "SoundAndVibrateSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->initRingUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$4;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 476
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 477
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings$4;->this$0:Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;->access$1500(Lcom/meizu/settings/soundandvibrate/SoundAndVibrateSettings;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mode_ring_up"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
