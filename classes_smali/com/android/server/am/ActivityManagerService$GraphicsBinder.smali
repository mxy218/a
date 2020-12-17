.class Lcom/android/server/am/ActivityManagerService$GraphicsBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphicsBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"  # Lcom/android/server/am/ActivityManagerService;

    .line 2253
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2254
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 2255
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2259
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "gfxinfo"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2260
    return-void

    .line 2263
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->isOOMExceptionHandlerEnable()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 2264
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2267
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->dumpGraphicsHardwareUsage(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->isOOMExceptionHandlerEnable()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2271
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityManagerService$GraphicsBinder$NlrV8SQVzLPy9_MEuArCaj5AC0s;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$GraphicsBinder$NlrV8SQVzLPy9_MEuArCaj5AC0s;-><init>(Lcom/android/server/am/ActivityManagerService$GraphicsBinder;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2274
    :cond_3e
    return-void
.end method

.method public synthetic lambda$dump$0$ActivityManagerService$GraphicsBinder()V
    .registers 3

    .line 2271
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$GraphicsBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$1102(Lcom/android/server/am/ActivityManagerService;Z)Z

    return-void
.end method
