.class Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field private static final LOG_STACK_STATE_MSG:I = 0x1

.field private static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG:I = 0x7

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED_MSG:I = 0x13

.field private static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field private static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field private static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field private static final NOTIFY_BACK_PRESSED_ON_TASK_ROOT:I = 0x15

.field private static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field private static final NOTIFY_PINNED_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field private static final NOTIFY_PINNED_STACK_ANIMATION_ENDED_LISTENERS_MSG:I = 0x5

.field private static final NOTIFY_PINNED_STACK_ANIMATION_STARTED_LISTENERS_MSG:I = 0x10

.field private static final NOTIFY_SINGLE_TASK_DISPLAY_DRAWN:I = 0x16

.field private static final NOTIFY_SINGLE_TASK_DISPLAY_EMPTY:I = 0x17

.field private static final NOTIFY_SIZE_COMPAT_MODE_ACTIVITY_CHANGED_MSG:I = 0x14

.field private static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field private static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field private static final NOTIFY_TASK_DISPLAY_CHANGED_LISTENERS_MSG:I = 0x18

.field private static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field private static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field private static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field private static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field private static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceLock:Ljava/lang/Object;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V
    .registers 5

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 79
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 83
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 87
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 91
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 95
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 99
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 103
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 107
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 111
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 116
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 120
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 124
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 128
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 132
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 136
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 140
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 144
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 148
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 152
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 156
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 160
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 164
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sdBP_U6BS8zRbtZp-gZ0BmFW8bs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sdBP_U6BS8zRbtZp-gZ0BmFW8bs;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 168
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$VuvWLQaLHifVGvurVv75MXCukH0;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 266
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    .line 267
    iput-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 268
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object p0
.end method

.method private forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 6

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1f

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    .line 315
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_1f

    .line 318
    goto :goto_1a

    .line 316
    :catch_19
    move-exception v2

    .line 313
    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 320
    :cond_1d
    :try_start_1d
    monitor-exit v0

    .line 321
    return-void

    .line 320
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw p1
.end method

.method private forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .registers 6

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    .line 302
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_19
    .catchall {:try_start_d .. :try_end_18} :catchall_24

    .line 305
    goto :goto_1a

    .line 303
    :catch_19
    move-exception v2

    .line 299
    :goto_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 307
    :cond_1d
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_24

    throw p1
.end method

.method static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    .line 81
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 85
    return-void
.end method

.method static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    .line 122
    return-void
.end method

.method static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationStarted()V

    .line 126
    return-void
.end method

.method static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V

    .line 130
    return-void
.end method

.method static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, p1}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 134
    return-void
.end method

.method static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V

    .line 138
    return-void
.end method

.method static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 142
    return-void
.end method

.method static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 146
    return-void
.end method

.method static synthetic lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(II)V

    .line 150
    return-void
.end method

.method static synthetic lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 154
    return-void
.end method

.method static synthetic lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 158
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    .line 89
    return-void
.end method

.method static synthetic lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onSingleTaskDisplayDrawn(I)V

    .line 162
    return-void
.end method

.method static synthetic lambda$new$21(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onSingleTaskDisplayEmpty(I)V

    .line 166
    return-void
.end method

.method static synthetic lambda$new$22(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    .line 170
    return-void
.end method

.method static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 93
    return-void
.end method

.method static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 97
    return-void
.end method

.method static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 101
    return-void
.end method

.method static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    .line 105
    return-void
.end method

.method static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, p1}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 109
    return-void
.end method

.method static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    .line 114
    return-void
.end method

.method static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    .line 118
    return-void
.end method


# virtual methods
.method notifyActivityDismissingDockedStack()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 387
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 388
    return-void
.end method

.method notifyActivityForcedResizable(IILjava/lang/String;)V
    .registers 6

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 394
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 395
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 396
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 403
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 404
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V
    .registers 6

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 412
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 413
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method

.method notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 337
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStackId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 336
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 338
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput p1, v0, Landroid/os/Message;->sendingUid:I

    .line 339
    iget-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 340
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 341
    return-void
.end method

.method notifyActivityRequestedOrientationChanged(II)V
    .registers 5

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 447
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 448
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 449
    return-void
.end method

.method notifyActivityUnpinned()V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 348
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 349
    return-void
.end method

.method notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    .registers 4

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 502
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 503
    return-void
.end method

.method notifyPinnedActivityRestartAttempt(Z)V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 360
    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 362
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 363
    return-void
.end method

.method notifyPinnedStackAnimationEnded()V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 378
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 380
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    return-void
.end method

.method notifyPinnedStackAnimationStarted()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 369
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 371
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 372
    return-void
.end method

.method notifySingleTaskDisplayDrawn(I)V
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayDrawn:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 512
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 513
    return-void
.end method

.method notifySingleTaskDisplayEmpty(I)V
    .registers 5

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifySingleTaskDisplayEmpty:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 523
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 524
    return-void
.end method

.method notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .registers 6

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 490
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 491
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 492
    return-void
.end method

.method notifyTaskCreated(ILandroid/content/ComponentName;)V
    .registers 6

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 419
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 420
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 421
    return-void
.end method

.method notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .registers 4

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 440
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 442
    return-void
.end method

.method notifyTaskDisplayChanged(II)V
    .registers 5

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 532
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 533
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 534
    return-void
.end method

.method notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 432
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 433
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 434
    return-void
.end method

.method notifyTaskProfileLocked(II)V
    .registers 5

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 469
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 470
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 458
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 459
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 460
    return-void
.end method

.method notifyTaskRemoved(I)V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 427
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 428
    return-void
.end method

.method notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 6

    .line 477
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 479
    iget-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 480
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 481
    return-void
.end method

.method notifyTaskStackChanged()V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    if-eqz p1, :cond_22

    .line 274
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 275
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 279
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 282
    :cond_22
    :goto_22
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    if-eqz p1, :cond_1a

    .line 288
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_15

    .line 289
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 291
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 294
    :cond_1a
    :goto_1a
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p1
.end method
