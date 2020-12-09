.class Lcom/android/server/GestureLauncherService$2;
.super Landroid/database/ContentObserver;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method constructor <init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V
    .registers 3

    .line 452
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 454
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->access$200(Lcom/android/server/GestureLauncherService;)I

    move-result p1

    if-ne p3, p1, :cond_12

    .line 455
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->access$600(Lcom/android/server/GestureLauncherService;)V

    .line 456
    iget-object p1, p0, Lcom/android/server/GestureLauncherService$2;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-virtual {p1}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 458
    :cond_12
    return-void
.end method
