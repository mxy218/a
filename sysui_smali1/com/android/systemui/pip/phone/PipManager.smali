.class public Lcom/android/systemui/pip/phone/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field private static sPipController:Lcom/android/systemui/pip/phone/PipManager;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    .line 72
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$1;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipAppOpsListener;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/pip/phone/PipManager;
    .registers 1

    .line 243
    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    if-nez v0, :cond_b

    .line 244
    new-instance v0, Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    .line 246
    :cond_b
    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "PipManager"

    .line 251
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    const-string v1, "  "

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shared/system/InputConsumerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 12

    .line 176
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    .line 177
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 178
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 181
    :try_start_e
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v0

    const-string v1, "PipManager"

    const-string v2, "Failed to register pinned stack listener"

    .line 183
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_20
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 187
    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getPipInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 188
    new-instance v0, Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/pip/phone/PipMediaController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 189
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/shared/system/InputConsumerController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 191
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v9, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/pip/phone/PipTouchHandler;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/app/IActivityTaskManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 193
    new-instance v0, Lcom/android/systemui/pip/phone/PipAppOpsListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    .line 194
    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/pip/phone/PipAppOpsListener;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipAppOpsListener$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mAppOpsListener:Lcom/android/systemui/pip/phone/PipAppOpsListener;

    .line 199
    :try_start_65
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    if-eqz p1, :cond_79

    .line 202
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p0

    .line 205
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_79
    :goto_79
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 1

    .line 236
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    return-void
.end method
