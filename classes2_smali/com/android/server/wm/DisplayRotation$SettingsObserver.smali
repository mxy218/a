.class Lcom/android/server/wm/DisplayRotation$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 1030
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 1031
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1032
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$700(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1036
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "show_rotation_suggestions"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1039
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1042
    const-string v1, "user_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1045
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->access$800(Lcom/android/server/wm/DisplayRotation;)Z

    .line 1046
    return-void
.end method

.method public onChange(Z)V
    .registers 5
    .param p1, "selfChange"  # Z

    .line 1050
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$800(Lcom/android/server/wm/DisplayRotation;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$200(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1054
    :cond_13
    return-void
.end method
