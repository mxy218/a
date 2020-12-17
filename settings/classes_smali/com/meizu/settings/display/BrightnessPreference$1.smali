.class Lcom/meizu/settings/display/BrightnessPreference$1;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/BrightnessPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/BrightnessPreference;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string/jumbo v0, "screen_brightness"

    const/4 v1, -0x2

    const/4 v2, -0x1

    .line 134
    :try_start_5
    iget-object v3, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_19

    :catch_14
    move-exception v3

    .line 137
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v3, v2

    .line 139
    :goto_19
    iget-object v4, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {v4}, Lcom/meizu/settings/display/BrightnessPreference;->access$000(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    .line 140
    invoke-static {v5}, Lcom/meizu/settings/display/BrightnessPreference;->access$100(Lcom/meizu/settings/display/BrightnessPreference;)I

    move-result v5

    .line 139
    invoke-static {v4, v0, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 141
    iget-object v0, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {v0}, Lcom/meizu/settings/display/BrightnessPreference;->access$100(Lcom/meizu/settings/display/BrightnessPreference;)I

    move-result v0

    if-ne v3, v0, :cond_3d

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/display/BrightnessPreference$1;->this$0:Lcom/meizu/settings/display/BrightnessPreference;

    invoke-static {p0}, Lcom/meizu/settings/display/BrightnessPreference;->access$200(Lcom/meizu/settings/display/BrightnessPreference;)Landroid/hardware/display/DisplayManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    :cond_3d
    return-void
.end method
