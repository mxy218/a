.class final Lcom/android/server/wm/ActivityTaskManagerService$H;
.super Landroid/os/Handler;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final FIRST_ACTIVITY_STACK_MSG:I = 0x64

.field static final FIRST_SUPERVISOR_STACK_MSG:I = 0xc8

.field static final REPORT_TIME_TRACKER_MSG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 6104
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 6110
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_11

    .line 6112
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppTimeTracker;

    .line 6113
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$H;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    .line 6116
    :goto_11
    return-void
.end method
