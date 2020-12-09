.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 140
    nop

    .line 142
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x13d

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_1b

    if-eq v0, v3, :cond_1b

    goto :goto_77

    .line 153
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 154
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 156
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_40

    .line 157
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 157
    invoke-virtual {p1, v1, v3, v4, v2}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_41

    .line 156
    :cond_40
    move-object p1, v2

    .line 161
    :goto_41
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 162
    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 163
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    if-ne v3, v4, :cond_4f

    .line 164
    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 166
    :cond_4f
    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 167
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_22 .. :try_end_5b} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_78

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 148
    :cond_65
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {p1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v0}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V

    .line 149
    nop

    .line 171
    :goto_77
    move-object p1, v2

    :goto_78
    if-eqz p1, :cond_8c

    .line 173
    :try_start_7a
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v0}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_83
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7a .. :try_end_83} :catch_84

    .line 176
    goto :goto_8c

    .line 174
    :catch_84
    move-exception p1

    .line 175
    const-string v0, "AppNotRespondingDialog"

    const-string v1, "bug report receiver dissappeared"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    :cond_8c
    :goto_8c
    iget-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {p1}, Lcom/android/server/am/AppNotRespondingDialog;->dismiss()V

    .line 180
    return-void
.end method
