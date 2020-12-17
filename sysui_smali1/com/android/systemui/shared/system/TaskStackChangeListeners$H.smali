.class final Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;
.super Landroid/os/Handler;
.source "TaskStackChangeListeners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/TaskStackChangeListeners;Landroid/os/Looper;)V
    .registers 3

    .line 231
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 232
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 237
    iget-object v0, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 238
    :try_start_7
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_2c2

    goto/16 :goto_2bd

    .line 366
    :pswitch_f  #0x13
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1a
    if-ltz v1, :cond_2bd

    .line 367
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskDisplayChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 359
    :pswitch_32  #0x12
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_3d
    if-ltz v1, :cond_2bd

    .line 360
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3d

    .line 352
    :pswitch_55  #0x11
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_60
    if-ltz v1, :cond_2bd

    .line 353
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_60

    .line 311
    :pswitch_7a  #0x10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 312
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_89
    if-ltz v1, :cond_2bd

    .line 313
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 314
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_89

    .line 345
    :pswitch_9d  #0xf
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_a8
    if-ltz v1, :cond_2bd

    .line 346
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 347
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityRequestedOrientationChanged(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_a8

    .line 338
    :pswitch_c0  #0xe
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 339
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_cf
    if-ltz v1, :cond_2bd

    .line 340
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_cf

    .line 332
    :pswitch_e3  #0xd
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_ee
    if-ltz v1, :cond_2bd

    .line 333
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_ee

    .line 325
    :pswitch_104  #0xc
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_10f
    if-ltz v1, :cond_2bd

    .line 326
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10f

    .line 303
    :pswitch_129  #0xb
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 304
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_138
    if-ltz v1, :cond_2bd

    .line 305
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 306
    invoke-virtual {v2, p1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_138

    .line 265
    :pswitch_14c  #0xa
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_157
    if-ltz p1, :cond_2bd

    .line 266
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityUnpinned()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_157

    .line 278
    :pswitch_16b  #0x9
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_176
    if-ltz p1, :cond_2bd

    .line 279
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedStackAnimationStarted()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_176

    .line 319
    :pswitch_18a  #0x8
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_195
    if-ltz v1, :cond_2bd

    .line 320
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskProfileLocked(II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_195

    .line 297
    :pswitch_1ad  #0x7
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1b8
    if-ltz p1, :cond_2bd

    .line 298
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityDismissingDockedStack()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1b8

    .line 290
    :pswitch_1cc  #0x6
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1d7
    if-ltz v1, :cond_2bd

    .line 291
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1d7

    .line 284
    :pswitch_1f3  #0x5
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_1fe
    if-ltz p1, :cond_2bd

    .line 285
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedStackAnimationEnded()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1fe

    .line 271
    :pswitch_212  #0x4
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_21d
    if-ltz v1, :cond_2bd

    .line 272
    iget-object v3, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_231

    move v4, v2

    goto :goto_232

    :cond_231
    const/4 v4, 0x0

    :goto_232
    invoke-virtual {v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onPinnedActivityRestartAttempt(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21d

    .line 257
    :pswitch_238  #0x3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;

    .line 258
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_247
    if-ltz v1, :cond_2bd

    .line 259
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget-object v3, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    iget v5, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    iget v6, p1, Lcom/android/systemui/shared/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onActivityPinned(Ljava/lang/String;III)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_247

    :pswitch_263  #0x2
    const-string v1, "onTaskSnapshotChanged"

    .line 248
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_273
    if-ltz v1, :cond_292

    .line 250
    iget-object v2, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    new-instance v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-direct {v4, v5}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/app/ActivityManager$TaskSnapshot;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskSnapshotChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_273

    .line 253
    :cond_292
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2bd

    :pswitch_296  #0x1
    const-string p1, "onTaskStackChanged"

    .line 240
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {p1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2a6
    if-ltz p1, :cond_2ba

    .line 242
    iget-object v1, p0, Lcom/android/systemui/shared/system/TaskStackChangeListeners$H;->this$0:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    invoke-static {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->access$000(Lcom/android/systemui/shared/system/TaskStackChangeListeners;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/TaskStackChangeListener;->onTaskStackChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2a6

    .line 244
    :cond_2ba
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 372
    :cond_2bd
    :goto_2bd
    monitor-exit v0

    return-void

    :catchall_2bf
    move-exception p0

    monitor-exit v0
    :try_end_2c1
    .catchall {:try_start_7 .. :try_end_2c1} :catchall_2bf

    throw p0

    :pswitch_data_2c2
    .packed-switch 0x1
        :pswitch_296  #00000001
        :pswitch_263  #00000002
        :pswitch_238  #00000003
        :pswitch_212  #00000004
        :pswitch_1f3  #00000005
        :pswitch_1cc  #00000006
        :pswitch_1ad  #00000007
        :pswitch_18a  #00000008
        :pswitch_16b  #00000009
        :pswitch_14c  #0000000a
        :pswitch_129  #0000000b
        :pswitch_104  #0000000c
        :pswitch_e3  #0000000d
        :pswitch_c0  #0000000e
        :pswitch_9d  #0000000f
        :pswitch_7a  #00000010
        :pswitch_55  #00000011
        :pswitch_32  #00000012
        :pswitch_f  #00000013
    .end packed-switch
.end method
