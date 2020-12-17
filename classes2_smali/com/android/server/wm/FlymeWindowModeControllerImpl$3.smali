.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;
.super Landroid/database/ContentObserver;
.source "FlymeWindowModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;->startProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 626
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iput-object p3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"  # Z

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;->val$contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "window_mode_double_tap_to_back"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_f

    move v2, v3

    :cond_f
    invoke-static {v0, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$002(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Z)Z

    .line 630
    return-void
.end method
