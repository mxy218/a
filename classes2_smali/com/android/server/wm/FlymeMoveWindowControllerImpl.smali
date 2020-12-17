.class public Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
.super Ljava/lang/Object;
.source "FlymeMoveWindowControllerImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/server/wm/FlymeMoveWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;,
        Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;,
        Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;
    }
.end annotation


# static fields
.field private static MOVE_WINDOW_DEFAULT_DURATION:I = 0x0

.field private static final MSG_MOVE_DOWN:I = 0x1

.field private static final MSG_MOVE_RESET:I = 0x0

.field private static final MSG_MOVE_RESET_ALL:I = 0xc

.field private static final MSG_POST_MESSAGE:I = 0xa

.field private static final MSG_UPDATE_WINDOW:I = 0xb

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private isDisplayReady:Z

.field private mContext:Landroid/content/Context;

.field private mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mH:Landroid/os/Handler;

.field private mLastInputWindowShow:Z

.field private mMWCb:Lflyme/view/IMoveWinCallback;

.field private final mMoveList:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mMoveWinCallbackClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const/16 v0, 0x15e

    sput v0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->MOVE_WINDOW_DEFAULT_DURATION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    .line 59
    new-instance v0, Lcom/android/server/wm/WindowList;

    invoke-direct {v0}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mLastInputWindowShow:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;Lcom/android/server/wm/TaskStack;ZI)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
    .param p1, "x1"  # Lcom/android/server/wm/TaskStack;
    .param p2, "x2"  # Z
    .param p3, "x3"  # I

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindowInner(Lcom/android/server/wm/TaskStack;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;II)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->notifyMoveWinClientLockedMoveWin(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    .line 44
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateDimWindowState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    .line 44
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->resetMoveWindowInner()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeMoveWindowControllerImpl;

    .line 44
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    return-object v0
.end method

.method private clearMoveWindowList()V
    .registers 5

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 175
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    .line 176
    .local v1, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_22

    .line 181
    :cond_1e
    nop

    .end local v1  # "taskStack":Lcom/android/server/wm/TaskStack;
    add-int/lit8 v0, v0, 0x1

    .line 182
    goto :goto_1

    .line 177
    .restart local v1  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_22
    :goto_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearMoveWindow remove taskStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 183
    .end local v1  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_3d
    return-void
.end method

.method private isClipStatusBar(Lcom/android/server/wm/TaskStack;)Z
    .registers 8
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    .line 276
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 277
    .local v1, "topChild":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_2d

    .line 278
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 279
    .local v2, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_2d

    .line 280
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 281
    .local v3, "flags":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 282
    .local v4, "privateFlags":I
    const/high16 v5, -0x80000000

    and-int/2addr v5, v3

    if-nez v5, :cond_27

    const/high16 v5, 0x20000

    and-int/2addr v5, v4

    if-eqz v5, :cond_2d

    .line 283
    :cond_27
    and-int/lit16 v5, v3, 0x400

    if-nez v5, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    .line 288
    .end local v1  # "topChild":Lcom/android/server/wm/Task;
    .end local v2  # "windowState":Lcom/android/server/wm/WindowState;
    .end local v3  # "flags":I
    .end local v4  # "privateFlags":I
    :cond_2d
    return v0
.end method

.method private moveWindowInner(Lcom/android/server/wm/TaskStack;ZI)V
    .registers 13
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "down"  # Z
    .param p3, "duration"  # I

    .line 331
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move-object v1, p1

    goto :goto_b

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    :goto_b
    move-object p1, v1

    .line 332
    if-eqz p1, :cond_90

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v1

    if-eq p2, v1, :cond_90

    .line 333
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 334
    .local v1, "bound":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 335
    .local v2, "offsetY":I
    const/4 v3, 0x0

    if-eqz p2, :cond_25

    move v4, v2

    goto :goto_26

    :cond_25
    move v4, v3

    :goto_26
    if-lez p3, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v3

    :goto_2a
    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateWindow(Lcom/android/server/wm/TaskStack;ZIZ)V

    .line 336
    if-lez p3, :cond_8d

    .line 337
    new-instance v0, Landroid/view/animation/TranslateYAnimation;

    const/4 v4, 0x0

    if-eqz p2, :cond_36

    move v5, v4

    goto :goto_37

    :cond_36
    int-to-float v5, v2

    :goto_37
    if-eqz p2, :cond_3b

    int-to-float v6, v2

    goto :goto_3c

    :cond_3b
    move v6, v4

    :goto_3c
    invoke-direct {v0, v5, v6}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    .line 338
    .local v0, "animator":Landroid/view/animation/TranslateYAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 339
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/animation/TranslateYAnimation;->initialize(IIII)V

    .line 340
    int-to-long v5, p3

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 341
    iget-object v5, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateYAnimation;->scaleCurrentDuration(F)V

    .line 342
    new-instance v5, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v6, Lcom/android/server/wm/WindowAnimationSpec;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v4, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v5, v6, v4}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v4, v5

    .line 345
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p1, v5, v4, v3}, Lcom/android/server/wm/TaskStack;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 346
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->commitPendingTransaction()V

    .line 347
    if-nez p2, :cond_8c

    .line 348
    iget-object v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mH:Landroid/os/Handler;

    const/16 v5, 0xc

    const-wide/16 v6, 0x15e

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    .end local v0  # "animator":Landroid/view/animation/TranslateYAnimation;
    .end local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_8c
    goto :goto_90

    .line 351
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateDimWindowState()V

    .line 354
    .end local v1  # "bound":Landroid/graphics/Rect;
    .end local v2  # "offsetY":I
    :cond_90
    :goto_90
    return-void
.end method

.method private moveWindowInner(III)Z
    .registers 11
    .param p1, "command"  # I
    .param p2, "duration"  # I
    .param p3, "delay"  # I

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 241
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->inMultiWindowMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 242
    return v2

    .line 244
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 245
    return v2

    .line 247
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 248
    .local v1, "rotation":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3b

    const/4 v4, 0x3

    if-ne v1, v4, :cond_30

    goto :goto_3b

    .line 251
    :cond_30
    iget-object v4, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p1, p2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    int-to-long v5, p3

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    return v3

    .line 249
    :cond_3b
    :goto_3b
    return v2
.end method

.method private notifyInputWindowState(ZI)V
    .registers 5
    .param p1, "show"  # Z
    .param p2, "top"  # I

    .line 156
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mLastInputWindowShow:Z

    if-eq v0, p1, :cond_17

    .line 157
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mLastInputWindowShow:Z

    .line 158
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mLastInputWindowShow:Z

    if-eqz v0, :cond_12

    .line 159
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->resetMoveWindow()V

    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->notifyMoveWinClientLockedMoveWin(II)V

    goto :goto_17

    .line 162
    :cond_12
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->notifyMoveWinClientLockedMoveWin(II)V

    .line 165
    :cond_17
    :goto_17
    return-void
.end method

.method private notifyMoveWinClientLockedMoveWin(II)V
    .registers 7
    .param p1, "msg"  # I
    .param p2, "data"  # I

    .line 256
    const-string v0, "WindowManager"

    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMWCb:Lflyme/view/IMoveWinCallback;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_65

    .line 258
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMWCb:Lflyme/view/IMoveWinCallback;

    if-eqz v1, :cond_17

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMWCb:Lflyme/view/IMoveWinCallback;

    invoke-interface {v1, p1, p2}, Lflyme/view/IMoveWinCallback;->notifyClient(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 263
    :cond_17
    goto :goto_31

    .line 261
    :catch_18
    move-exception v1

    .line 262
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyClient mMWCb error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_31
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    .line 266
    .local v2, "client":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    invoke-static {v2}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;->access$500(Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;)Lflyme/view/IMoveWinCallback;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lflyme/view/IMoveWinCallback;->notifyClient(II)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_4a} :catch_4c

    .line 267
    .end local v2  # "client":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    goto :goto_37

    .line 270
    :cond_4b
    goto :goto_65

    .line 268
    :catch_4c
    move-exception v1

    .line 269
    .restart local v1  # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyClient error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    return-void
.end method

.method private resetMoveWindow()V
    .registers 5

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mH:Landroid/os/Handler;

    const/16 v1, 0xc

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    return-void
.end method

.method private resetMoveWindowInner()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->clear()V

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FlymeMoveWindowControllerImpl$BOp_lXqD8BI_bQe_lQwitX3Ag3U;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$FlymeMoveWindowControllerImpl$BOp_lXqD8BI_bQe_lQwitX3Ag3U;-><init>(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->forEach(Ljava/util/function/Consumer;)V

    .line 237
    return-void
.end method

.method private toggleMoveWindowInner(Z)Z
    .registers 6
    .param p1, "onlyReset"  # Z

    .line 186
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 187
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->clearMoveWindowList()V

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 189
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_33

    .line 190
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isMovingFinished()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 191
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    .line 192
    sget v2, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->MOVE_WINDOW_DEFAULT_DURATION:I

    invoke-direct {p0, v1, v2, v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindowInner(III)Z

    .line 193
    return v3

    .line 195
    :cond_29
    if-nez p1, :cond_33

    .line 196
    sget v1, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->MOVE_WINDOW_DEFAULT_DURATION:I

    const/16 v2, 0x32

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindowInner(III)Z

    .line 197
    return v3

    .line 203
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_33
    return v1
.end method

.method private updateDimWindowState()V
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_13

    .line 323
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->notifyMoveWinClientLockedMoveWin(II)V

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    goto :goto_18

    .line 326
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v0, v2, v1, v2, v2}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 328
    :goto_18
    return-void
.end method

.method private updateWindow(Lcom/android/server/wm/TaskStack;ZIZ)V
    .registers 8
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "down"  # Z
    .param p3, "offsetY"  # I
    .param p4, "anim"  # Z

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isClipStatusBar(Lcom/android/server/wm/TaskStack;)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/TaskStack;->setMoveWindowMode(ZZ)V

    .line 293
    invoke-virtual {p1, p3, p4}, Lcom/android/server/wm/TaskStack;->setMoveWindowOffset(IZ)V

    .line 294
    const-string v0, "WindowManager"

    if-eqz p2, :cond_2a

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindow add taskStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateDimWindowState()V

    .line 299
    :cond_2a
    if-nez p2, :cond_4a

    if-nez p4, :cond_4a

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindow remove taskStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 302
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateDimWindowState()V

    .line 304
    :cond_4a
    return-void
.end method


# virtual methods
.method public adjustInputWindow(Lcom/android/server/wm/DisplayFrames;)V
    .registers 4
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 149
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_1e

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 151
    .local v0, "show":Z
    :goto_17
    iget-object v1, p1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->notifyInputWindowState(ZI)V

    .line 153
    .end local v0  # "show":Z
    :cond_1e
    return-void
.end method

.method public adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .registers 9
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 402
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_48

    .line 403
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 404
    .local v0, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 405
    .local v1, "action":I
    const/4 v2, 0x4

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_15

    goto :goto_48

    .line 407
    :cond_15
    if-nez v1, :cond_48

    .line 408
    sget-boolean v2, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_DEBUG_MODE:Z

    if-eqz v2, :cond_48

    .line 409
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->toggleMoveWindow()V

    .line 410
    return v3

    .line 416
    :cond_1f
    if-nez v1, :cond_48

    .line 417
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-lez v2, :cond_48

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 419
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->toggleMoveWindowInner(Z)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 420
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 422
    :cond_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_48

    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 428
    .end local v0  # "keyCode":I
    .end local v1  # "action":I
    :cond_48
    :goto_48
    const/4 v0, 0x0

    return v0
.end method

.method public adjustOnOrientationChanged(II)V
    .registers 4
    .param p1, "lastOrientation"  # I
    .param p2, "newOrientation"  # I

    .line 208
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_7

    .line 209
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->resetMoveWindow()V

    .line 211
    :cond_7
    return-void
.end method

.method public getMovedWinPoint()Landroid/graphics/Point;
    .registers 5

    .line 138
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_1d

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 140
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 141
    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getMoveWindowOffset()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 144
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 127
    iput-object p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 128
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$H;-><init>(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mH:Landroid/os/Handler;

    .line 130
    iput-object p2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 131
    invoke-static {p2}, Lcom/android/server/wm/FlymeDimWindow;->getDimWindow(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/FlymeDimWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FlymeDimWindow;->registerOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    .line 134
    return-void
.end method

.method public synthetic lambda$resetMoveWindowInner$0$FlymeMoveWindowControllerImpl(Lcom/android/server/wm/TaskStack;)V
    .registers 3
    .param p1, "t"  # Lcom/android/server/wm/TaskStack;

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindowInner(Lcom/android/server/wm/TaskStack;ZI)V

    .line 236
    return-void
.end method

.method public moveWindow(II)Z
    .registers 4
    .param p1, "command"  # I
    .param p2, "duration"  # I

    .line 215
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_b

    .line 216
    const/16 v0, 0x32

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindowInner(III)Z

    move-result v0

    return v0

    .line 218
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationBegin(Lcom/android/server/wm/TaskStack;)V
    .registers 4
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 308
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mH:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    :cond_11
    return-void
.end method

.method public onAnimationDone(Lcom/android/server/wm/TaskStack;)V
    .registers 3
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 315
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 317
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->updateDimWindowState()V

    .line 319
    :cond_12
    return-void
.end method

.method public onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "oldFocus"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 358
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_21

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveList:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-lez v0, :cond_21

    .line 360
    if-eqz p2, :cond_21

    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p2}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 361
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->resetMoveWindowInner()V

    .line 365
    :cond_21
    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 3
    .param p1, "isScreenOn"  # Z

    .line 223
    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->isDisplayReady:Z

    if-eqz v0, :cond_9

    .line 224
    invoke-direct {p0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->resetMoveWindow()V

    .line 226
    :cond_9
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_36

    .line 67
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 68
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 69
    .local v1, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isMovingFinished()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 70
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v2}, Lcom/android/server/wm/FlymeDimWindow;->isShowDim()Z

    move-result v2

    if-nez v2, :cond_31

    .line 71
    const/4 v2, 0x0

    sget v3, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->MOVE_WINDOW_DEFAULT_DURATION:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->moveWindow(II)Z

    .line 74
    .end local v1  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 76
    nop

    .line 80
    :goto_36
    const/4 v0, 0x1

    return v0

    .line 74
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 7
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 369
    if-eqz p1, :cond_3d

    .line 370
    new-instance v0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;-><init>(IILflyme/view/IMoveWinCallback;)V

    .line 371
    .local v0, "moveWinCallbackClient":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    const/4 v1, 0x0

    .line 372
    .local v1, "isAdd":Z
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    monitor-enter v2

    .line 373
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 374
    iget-object v3, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    const/4 v1, 0x1

    .line 377
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_3a

    .line 378
    if-eqz v1, :cond_3d

    .line 379
    new-instance v2, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;-><init>(Lcom/android/server/wm/FlymeMoveWindowControllerImpl;IILcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;)V

    .line 380
    .local v2, "binderDeath":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;
    invoke-interface {p1}, Lflyme/view/IMoveWinCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_3d

    .line 377
    .end local v2  # "binderDeath":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$BinderDeath;
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3

    .line 383
    .end local v0  # "moveWinCallbackClient":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    .end local v1  # "isAdd":Z
    :cond_3d
    :goto_3d
    return-void
.end method

.method public setMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMWCb:Lflyme/view/IMoveWinCallback;

    .line 398
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 123
    return-void
.end method

.method public toggleMoveWindow()V
    .registers 2

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->toggleMoveWindowInner(Z)Z

    .line 170
    return-void
.end method

.method public unregisterMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 387
    if-eqz p1, :cond_1c

    .line 388
    new-instance v0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;-><init>(IILflyme/view/IMoveWinCallback;)V

    .line 389
    .local v0, "moveWinCallbackClient":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    iget-object v1, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    monitor-enter v1

    .line 390
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/FlymeMoveWindowControllerImpl;->mMoveWinCallbackClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 391
    monitor-exit v1

    goto :goto_1c

    :catchall_19
    move-exception v2

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw v2

    .line 393
    .end local v0  # "moveWinCallbackClient":Lcom/android/server/wm/FlymeMoveWindowControllerImpl$IMoveWinCallbackClient;
    :cond_1c
    :goto_1c
    return-void
.end method
