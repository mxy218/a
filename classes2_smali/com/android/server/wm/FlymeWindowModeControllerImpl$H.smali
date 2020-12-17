.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;
.super Landroid/os/Handler;
.source "FlymeWindowModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 143
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"  # Landroid/os/Message;

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_188

    goto/16 :goto_187

    .line 219
    :pswitch_9  #0x9
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 220
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1c

    move v1, v2

    :cond_1c
    invoke-static {v3, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1600(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Z)V

    .line 221
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 223
    goto/16 :goto_187

    .line 221
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 213
    :pswitch_2b  #0x8
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 214
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    .line 215
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 217
    goto/16 :goto_187

    .line 215
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 203
    :pswitch_48  #0x7
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 204
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_62

    .line 205
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-static {v1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1400(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;)V

    goto :goto_69

    .line 207
    :cond_62
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1500(Lcom/android/server/wm/FlymeWindowModeControllerImpl;I)V

    .line 209
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_51 .. :try_end_6a} :catchall_6f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 211
    goto/16 :goto_187

    .line 209
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 193
    :pswitch_75  #0x6
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1100(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Z

    move-result v1

    .line 195
    .local v1, "update":Z
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_99

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 196
    if-eqz v1, :cond_97

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    .line 201
    .end local v1  # "update":Z
    :cond_97
    goto/16 :goto_187

    .line 195
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 186
    :pswitch_9f  #0x5
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$1000(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    .line 188
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 190
    goto/16 :goto_187

    .line 188
    :catchall_b6
    move-exception v1

    :try_start_b7
    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 180
    :pswitch_bc  #0x4
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_d3

    move v1, v2

    :cond_d3
    invoke-static {v3, v4, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$900(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;Z)V

    .line 182
    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_c5 .. :try_end_d7} :catchall_dc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 184
    goto/16 :goto_187

    .line 182
    :catchall_dc
    move-exception v1

    :try_start_dd
    monitor-exit v0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 170
    :pswitch_e2  #0x3
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_eb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$600(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 172
    .local v2, "taskStack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$700(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 173
    .local v3, "topStack":Lcom/android/server/wm/TaskStack;
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v4, v3, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$800(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 174
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v5

    invoke-static {v4, v2, v1, v5}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$500(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;ZZ)V

    .line 176
    .end local v2  # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v3  # "topStack":Lcom/android/server/wm/TaskStack;
    :cond_110
    monitor-exit v0
    :try_end_111
    .catchall {:try_start_eb .. :try_end_111} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 178
    goto/16 :goto_187

    .line 176
    :catchall_116
    move-exception v1

    :try_start_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 164
    :pswitch_11c  #0x2
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_125
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/TaskStack;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_134

    move v5, v2

    goto :goto_135

    :cond_134
    move v5, v1

    :goto_135
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_13a

    move v1, v2

    :cond_13a
    invoke-static {v3, v4, v5, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$500(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;ZZ)V

    .line 166
    monitor-exit v0
    :try_end_13e
    .catchall {:try_start_125 .. :try_end_13e} :catchall_142

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 168
    goto :goto_187

    .line 166
    :catchall_142
    move-exception v1

    :try_start_143
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_142

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 159
    :pswitch_148  #0x1
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$400(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 160
    invoke-static {v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v4, 0xa1001cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 159
    invoke-static {v0, v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    goto :goto_187

    .line 155
    :pswitch_171  #0x0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/FlymeWindowModeConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeConfig;->updateWindowModeWhiteList(Landroid/content/ContentResolver;)V

    .line 156
    nop

    .line 227
    :goto_187
    return-void

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_171  #00000000
        :pswitch_148  #00000001
        :pswitch_11c  #00000002
        :pswitch_e2  #00000003
        :pswitch_bc  #00000004
        :pswitch_9f  #00000005
        :pswitch_75  #00000006
        :pswitch_48  #00000007
        :pswitch_2b  #00000008
        :pswitch_9  #00000009
    .end packed-switch
.end method

.method postMessage(ILcom/android/server/wm/TaskStack;ZZI)V
    .registers 9
    .param p1, "what"  # I
    .param p2, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p3, "anim"  # Z
    .param p4, "notMovePosition"  # Z
    .param p5, "delay"  # I

    .line 147
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 148
    .local v0, "message":Landroid/os/Message;
    int-to-long v1, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method
