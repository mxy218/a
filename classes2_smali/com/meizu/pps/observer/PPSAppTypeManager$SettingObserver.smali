.class Lcom/meizu/pps/observer/PPSAppTypeManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "PPSAppTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/pps/observer/PPSAppTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"  # Landroid/os/Handler;

    .line 367
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 368
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 372
    const-string v0, "recent_lock_apps"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 373
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->access$200()V

    goto :goto_1f

    .line 374
    :cond_10
    const-string v0, "default_input_method"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 375
    invoke-static {}, Lcom/meizu/pps/observer/PPSAppTypeManager;->access$300()V

    .line 377
    :cond_1f
    :goto_1f
    return-void
.end method
