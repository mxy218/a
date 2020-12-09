.class Lcom/android/server/am/ActivityManagerService$16;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->restart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 8790
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 8793
    const-string p1, "ActivityManager"

    const-string p2, "Shutting down activity manager..."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8794
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$16;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/16 v0, 0x2710

    invoke-virtual {p2, v0}, Lcom/android/server/am/ActivityManagerService;->shutdown(I)Z

    .line 8795
    const-string p2, "Shutdown complete, restarting!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8796
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 8797
    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 8798
    return-void
.end method
