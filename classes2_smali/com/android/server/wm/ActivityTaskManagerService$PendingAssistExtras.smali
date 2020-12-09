.class public Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/wm/ActivityRecord;

.field public content:Landroid/app/assist/AssistContent;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public isHome:Z

.field public final receiver:Landroid/app/IAssistDataReceiver;

.field public receiverExtras:Landroid/os/Bundle;

.field public result:Landroid/os/Bundle;

.field public structure:Landroid/app/assist/AssistStructure;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V
    .registers 9

    .line 3725
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3717
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3718
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3719
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3720
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3726
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3727
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 3728
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 3729
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 3730
    iput-object p6, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3731
    iput-object p7, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    .line 3732
    iput p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    .line 3733
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 3737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    monitor-enter p0

    .line 3739
    const/4 v0, 0x1

    :try_start_1a
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3740
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3741
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_26

    .line 3742
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    .line 3743
    return-void

    .line 3741
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method
