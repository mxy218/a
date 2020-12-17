.class Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;
.super Landroid/os/Handler;
.source "FlymeMoveWindowControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    .line 85
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"  # Landroid/os/Message;

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    const/4 v2, 0x1

    if-eq v0, v2, :cond_38

    packed-switch v0, :pswitch_data_76

    goto :goto_6f

    .line 111
    :pswitch_c  #0xc
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$000(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$400(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)V

    .line 113
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6f

    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 107
    :pswitch_28  #0xb
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$300(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)V

    .line 109
    goto :goto_6f

    .line 103
    :pswitch_2e  #0xa
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$200(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;II)V

    .line 105
    goto :goto_6f

    .line 97
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$000(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 98
    iget-object v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v1, v2, v4}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$100(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;Lcom/android/server/wm/TaskStack;ZI)V

    .line 99
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    goto :goto_6f

    .line 99
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 91
    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$000(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 92
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->access$100(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;Lcom/android/server/wm/TaskStack;ZI)V

    .line 93
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 95
    nop

    .line 118
    :goto_6f
    return-void

    .line 93
    :catchall_70
    move-exception v1

    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :pswitch_data_76
    .packed-switch 0xa
        :pswitch_2e  #0000000a
        :pswitch_28  #0000000b
        :pswitch_c  #0000000c
    .end packed-switch
.end method
