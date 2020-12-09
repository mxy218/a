.class final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .registers 4

    .line 539
    iput-object p1, p0, Lcom/android/server/am/ProcessList$KillHandler;->this$0:Lcom/android/server/am/ProcessList;

    .line 540
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 541
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 545
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_a

    .line 553
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1c

    .line 547
    :cond_a
    const-wide/16 v0, 0x40

    const-string v2, "killProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 548
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 549
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    nop

    .line 555
    :goto_1c
    return-void
.end method
