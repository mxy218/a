.class Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 6

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 443
    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7

    .line 430
    if-eqz p4, :cond_21

    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result p3

    if-eqz p3, :cond_21

    .line 431
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;Z)V

    .line 432
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$3$FRNc42I1SE4lD0XFYgIp8RCUXng;-><init>(Lcom/android/server/wm/WindowManagerService$3;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 437
    :cond_21
    iget-object p3, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v0, "-a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p1, p2, v0, p4}, Lcom/android/server/wm/WindowManagerService;->access$100(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 438
    return-void
.end method

.method public synthetic lambda$dumpCritical$0$WindowManagerService$3()V
    .registers 3

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFile()V

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 435
    return-void
.end method
