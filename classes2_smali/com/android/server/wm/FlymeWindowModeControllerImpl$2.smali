.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;
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

    .line 616
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iput-object p3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"  # Z

    .line 619
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/FlymeWindowModeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeConfig;->updateWindowModeWhiteList(Landroid/content/ContentResolver;)V

    .line 620
    return-void
.end method
