.class Lcom/android/server/am/AppWaitingForDebuggerDialog$1;
.super Landroid/os/Handler;
.source "AppWaitingForDebuggerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppWaitingForDebuggerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 66
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_13

    .line 69
    :cond_6
    iget-object p1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object p1, p1, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v0, v0, Lcom/android/server/am/AppWaitingForDebuggerDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, p0, Lcom/android/server/am/AppWaitingForDebuggerDialog$1;->this$0:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 72
    :goto_13
    return-void
.end method