.class Lcom/android/server/wm/FlymeDimWindow;
.super Ljava/lang/Object;
.source "FlymeDimWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeDimWindow$H;,
        Lcom/android/server/wm/FlymeDimWindow$DimView;,
        Lcom/android/server/wm/FlymeDimWindow$UserWindowState;,
        Lcom/android/server/wm/FlymeDimWindow$User;
    }
.end annotation


# static fields
.field private static final MSG_ADD_WINDOW_BACKGROUND:I = 0x0

.field private static final MSG_CLEAR_WINDOW_BACKGROUND:I = 0x4

.field private static final MSG_HIDE_WINDOW_BACKGROUND:I = 0x3

.field private static final MSG_REMOVE_WINDOW_BACKGROUND:I = 0x2

.field private static final MSG_UPDATE_STATE_BACKGROUND:I = 0x5

.field private static final MSG_UPDATE_WINDOW_BACKGROUND:I = 0x1

.field static final USER_MOVE_WINDOW:I = 0x1

.field static final USER_SYSTEM_WINDOW:I = 0x2

.field static final USER_WINDOW_MODE:I

.field private static mSingles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/FlymeDimWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isAdded:Z

.field private isCtsRunning:Z

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

.field private mDisplayId:I

.field private mLastFlags:I

.field private final mOnTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUiContext:Landroid/content/Context;

.field private mUiHandler:Landroid/os/Handler;

.field private mUserFlags:Landroid/util/SparseIntArray;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/wm/FlymeDimWindow;->mSingles:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mDisplayId:I

    .line 72
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    .line 79
    iput v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    .line 81
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    .line 96
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDisplayId:I

    .line 97
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 98
    .local v1, "systemThread":Landroid/app/ActivityThread;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    .line 99
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 100
    .local v2, "looper":Landroid/os/Looper;
    new-instance v3, Lcom/android/server/wm/FlymeDimWindow$H;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/FlymeDimWindow$H;-><init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    .line 101
    new-instance v3, Lcom/android/server/wm/FlymeDimWindow$1;

    iget-object v4, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/FlymeDimWindow$1;-><init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mContentObserver:Landroid/database/ContentObserver;

    .line 123
    iget-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mz_cts_state"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_52

    move v0, v5

    :cond_52
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    .line 124
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    .local v0, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/FlymeDimWindow;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v0, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FlymeDimWindow;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/FlymeDimWindow;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p1, "x1"  # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/FlymeDimWindow;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/FlymeDimWindow;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/FlymeDimWindow;->removeWindow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/FlymeDimWindow;)Lcom/android/server/wm/FlymeDimWindow$DimView;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/FlymeDimWindow;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/FlymeDimWindow;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/FlymeDimWindow;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p1, "x1"  # Z

    .line 39
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/FlymeDimWindow;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p1, "x1"  # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeDimWindow;->clearWindow(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/FlymeDimWindow;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/FlymeDimWindow;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/FlymeDimWindow;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;

    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/FlymeDimWindow;->addDimWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/FlymeDimWindow;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p1, "x1"  # Z

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeDimWindow;->updateWindow(Z)V

    return-void
.end method

.method private addDimWindow()V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_81

    .line 316
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x805

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 318
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 319
    const/16 v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 320
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/FlymeDimWindow;->updateWindow(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 323
    const/high16 v1, 0x3e800000  # 0.25f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 324
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 325
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 326
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 327
    const-string v1, "windowModeDim"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 329
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 330
    new-instance v0, Lcom/android/server/wm/FlymeDimWindow$DimView;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlymeDimWindow$DimView;-><init>(Lcom/android/server/wm/FlymeDimWindow;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    iget-object v2, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_81

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDimWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_81
    return-void
.end method

.method private applyFlag(IIZ)I
    .registers 5
    .param p1, "flags"  # I
    .param p2, "flag"  # I
    .param p3, "apply"  # Z

    .line 385
    if-eqz p3, :cond_4

    .line 386
    or-int/2addr p1, p2

    goto :goto_6

    .line 388
    :cond_4
    not-int v0, p2

    and-int/2addr p1, v0

    .line 390
    :goto_6
    return p1
.end method

.method private clearWindow(Z)V
    .registers 5
    .param p1, "remove"  # Z

    .line 189
    iget v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    if-eqz v0, :cond_23

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    .line 192
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    if-eqz v0, :cond_23

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 197
    :cond_23
    return-void
.end method

.method static getDimWindow(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/FlymeDimWindow;
    .registers 5
    .param p0, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 84
    const-class v0, Lcom/android/server/wm/FlymeDimWindow;

    monitor-enter v0

    .line 85
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 86
    .local v1, "displayId":I
    sget-object v2, Lcom/android/server/wm/FlymeDimWindow;->mSingles:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FlymeDimWindow;

    .line 87
    .local v2, "dimWindow":Lcom/android/server/wm/FlymeDimWindow;
    if-nez v2, :cond_1d

    .line 88
    new-instance v3, Lcom/android/server/wm/FlymeDimWindow;

    invoke-direct {v3, p0}, Lcom/android/server/wm/FlymeDimWindow;-><init>(Lcom/android/server/wm/DisplayContent;)V

    move-object v2, v3

    .line 89
    sget-object v3, Lcom/android/server/wm/FlymeDimWindow;->mSingles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 91
    :cond_1d
    monitor-exit v0

    return-object v2

    .line 92
    .end local v1  # "displayId":I
    .end local v2  # "dimWindow":Lcom/android/server/wm/FlymeDimWindow;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private getFullscreenDimTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/WindowContainer;
    .registers 11
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "dimTarget"  # Lcom/android/server/wm/TaskStack;

    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v0

    .line 201
    .local v0, "taskStacks":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/TaskStack;>;"
    const/4 v1, 0x0

    .line 202
    .local v1, "topStack":Lcom/android/server/wm/TaskStack;
    const/4 v2, 0x0

    .line 203
    .local v2, "findDimTarget":Z
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_c
    if-ltz v3, :cond_3b

    .line 204
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskStack;

    .line 205
    .local v5, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v6

    .line 206
    .local v6, "windowingMode":I
    if-ne p2, v5, :cond_1c

    .line 207
    const/4 v2, 0x1

    .line 208
    goto :goto_2f

    .line 210
    :cond_1c
    if-ne v6, v4, :cond_24

    .line 211
    if-eqz p2, :cond_22

    if-eqz v2, :cond_24

    .line 212
    :cond_22
    move-object v1, v5

    .line 213
    goto :goto_3b

    .line 216
    :cond_24
    const/4 v7, 0x4

    if-eq v6, v7, :cond_2a

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2f

    .line 218
    :cond_2a
    if-eqz p2, :cond_32

    if-eqz v2, :cond_2f

    goto :goto_32

    .line 203
    .end local v5  # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v6  # "windowingMode":I
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_c

    .line 219
    .restart local v5  # "taskStack":Lcom/android/server/wm/TaskStack;
    .restart local v6  # "windowingMode":I
    :cond_32
    :goto_32
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    return-object v4

    .line 223
    .end local v3  # "i":I
    .end local v5  # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v6  # "windowingMode":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_5c

    .line 224
    sget-object v3, Lcom/android/server/wm/-$$Lambda$FlymeDimWindow$28tRfE459Ga5E6xj_9lL7DhYdBU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeDimWindow$28tRfE459Ga5E6xj_9lL7DhYdBU;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskStack;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 225
    .local v3, "window":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_56

    .line 226
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 227
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_56

    .line 228
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 229
    .local v5, "windowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_56

    .line 230
    return-object v5

    .line 234
    .end local v4  # "task":Lcom/android/server/wm/Task;
    .end local v5  # "windowToken":Lcom/android/server/wm/AppWindowToken;
    :cond_56
    if-nez v3, :cond_5a

    move-object v4, v1

    goto :goto_5b

    :cond_5a
    move-object v4, v3

    :goto_5b
    return-object v4

    .line 236
    .end local v3  # "window":Lcom/android/server/wm/WindowState;
    :cond_5c
    const/4 v3, 0x0

    return-object v3
.end method

.method static synthetic lambda$assignDimLayers$1(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->meizuFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$getFullscreenDimTarget$0(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    return v0
.end method

.method private removeWindow()V
    .registers 3

    .line 339
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    if-eqz v0, :cond_3e

    .line 340
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_3e

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    .line 343
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_37

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeView isCtsRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDimWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 349
    :cond_3e
    return-void
.end method

.method private updateWindow(I)I
    .registers 7
    .param p1, "flags"  # I

    .line 372
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/FlymeDimWindow;->applyFlag(IIZ)I

    move-result p1

    .line 373
    const/high16 v1, 0x100000

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/FlymeDimWindow;->applyFlag(IIZ)I

    move-result p1

    .line 374
    iget v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    move v1, v0

    :goto_13
    const/16 v2, 0x10

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/FlymeDimWindow;->applyFlag(IIZ)I

    move-result p1

    .line 375
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_36

    .line 376
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v1

    array-length v2, v1

    :goto_28
    if-ge v0, v2, :cond_36

    aget v3, v1, v0

    .line 377
    .local v3, "key":I
    iget-object v4, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 378
    .local v4, "flag":I
    or-int/2addr p1, v4

    .line 376
    .end local v3  # "key":I
    .end local v4  # "flag":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 381
    :cond_36
    return p1
.end method

.method private updateWindow(Z)V
    .registers 5
    .param p1, "remove"  # Z

    .line 352
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_1c

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindow mLastFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDimWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    if-eqz v1, :cond_4e

    .line 356
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/FlymeDimWindow;->updateWindow(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    iget-object v2, p0, Lcom/android/server/wm/FlymeDimWindow;->mWmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    const/4 v1, 0x3

    if-nez v0, :cond_43

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3f

    const/4 v1, 0x2

    :cond_3f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4e

    .line 361
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeDimWindow$DimView;->setVisibility(I)V

    .line 365
    :cond_4e
    :goto_4e
    return-void
.end method


# virtual methods
.method assignDimLayers(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowToken;)V
    .registers 14
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "windowModeDim"  # Lcom/android/server/wm/WindowToken;

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "dimTarget":Lcom/android/server/wm/WindowContainer;
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    const/4 v3, 0x1

    if-eqz v1, :cond_74

    if-eqz p3, :cond_74

    .line 243
    const/4 v1, 0x1

    .line 244
    .local v1, "below":Z
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 245
    .local v4, "topTaskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_74

    .line 246
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isMoveWindowMode()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_25

    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isMovingFinished()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_25

    :cond_23
    move v5, v6

    goto :goto_26

    :cond_25
    :goto_25
    move v5, v3

    .line 247
    .local v5, "isMoveWindowMode":Z
    :goto_26
    const/4 v7, 0x0

    if-eqz v5, :cond_2b

    move-object v8, v4

    goto :goto_2c

    :cond_2b
    move-object v8, v7

    :goto_2c
    move-object v0, v8

    .line 248
    if-nez v0, :cond_4f

    .line 249
    iget-object v8, v4, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3d

    .line 250
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/FlymeDimWindow;->getFullscreenDimTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_4f

    .line 253
    :cond_3d
    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 254
    if-eqz v4, :cond_4f

    .line 255
    iget-boolean v8, v4, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    if-eqz v8, :cond_49

    goto :goto_4a

    :cond_49
    move-object v7, v4

    :goto_4a
    invoke-direct {p0, p1, v7}, Lcom/android/server/wm/FlymeDimWindow;->getFullscreenDimTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskStack;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 256
    const/4 v1, 0x0

    .line 260
    :cond_4f
    :goto_4f
    sget-object v7, Lcom/android/server/wm/-$$Lambda$FlymeDimWindow$hrkxJV8qSz-EmCKXD7Fw-KZyH7E;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeDimWindow$hrkxJV8qSz-EmCKXD7Fw-KZyH7E;

    invoke-virtual {p1, v7}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 261
    .local v7, "win":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_59

    move v8, v3

    goto :goto_5a

    :cond_59
    move v8, v6

    :goto_5a
    const/4 v9, 0x2

    invoke-virtual {p0, v8, v3, v6, v9}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 262
    if-nez v0, :cond_66

    if-eqz v7, :cond_66

    .line 263
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 265
    :cond_66
    if-eqz v0, :cond_74

    .line 266
    iget-object v6, p3, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v8, v0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_70

    const/4 v9, -0x1

    goto :goto_71

    :cond_70
    move v9, v3

    :goto_71
    invoke-virtual {p2, v6, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 270
    .end local v1  # "below":Z
    .end local v4  # "topTaskStack":Lcom/android/server/wm/TaskStack;
    .end local v5  # "isMoveWindowMode":Z
    .end local v7  # "win":Lcom/android/server/wm/WindowState;
    :cond_74
    if-eqz p3, :cond_93

    if-nez v0, :cond_93

    .line 271
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mDimView:Lcom/android/server/wm/FlymeDimWindow$DimView;

    if-eqz v1, :cond_93

    invoke-virtual {v1}, Lcom/android/server/wm/FlymeDimWindow$DimView;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_93

    .line 272
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_93

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 277
    :cond_93
    return-void
.end method

.method isShowDim()Z
    .registers 2

    .line 368
    iget v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method registerOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/view/View$OnTouchListener;

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method unregisterOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/view/View$OnTouchListener;

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mOnTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method updateWindowState(ZZZI)V
    .registers 8
    .param p1, "show"  # Z
    .param p2, "showDim"  # Z
    .param p3, "showWallpaper"  # Z
    .param p4, "userId"  # I
        .annotation build Lcom/android/server/wm/FlymeDimWindow$User;
        .end annotation
    .end param

    .line 280
    new-instance v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;-><init>(Lcom/android/server/wm/FlymeDimWindow;Lcom/android/server/wm/FlymeDimWindow$1;)V

    .line 281
    .local v0, "userWindowState":Lcom/android/server/wm/FlymeDimWindow$UserWindowState;
    iput-boolean p1, v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->show:Z

    .line 282
    iput-boolean p2, v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showDim:Z

    .line 283
    iput-boolean p3, v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showWallpaper:Z

    .line 284
    iput p4, v0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->userId:I

    .line 285
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method updateWindowStateInner(Lcom/android/server/wm/FlymeDimWindow$UserWindowState;)V
    .registers 8
    .param p1, "userWindowState"  # Lcom/android/server/wm/FlymeDimWindow$UserWindowState;

    .line 289
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_3a

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowState show="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->show:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",showDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showDim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",showWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeDimWindow"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    iget v1, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->userId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 293
    .local v0, "flags":I
    const/4 v1, 0x2

    iget-boolean v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->show:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    iget-boolean v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showDim:Z

    if-eqz v3, :cond_4f

    move v3, v4

    goto :goto_50

    :cond_4f
    move v3, v2

    :goto_50
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wm/FlymeDimWindow;->applyFlag(IIZ)I

    move-result v0

    .line 294
    const/high16 v1, 0x100000

    iget-boolean v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->show:Z

    if-eqz v3, :cond_60

    iget-boolean v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->showWallpaper:Z

    if-eqz v3, :cond_60

    move v3, v4

    goto :goto_61

    :cond_60
    move v3, v2

    :goto_61
    invoke-direct {p0, v0, v1, v3}, Lcom/android/server/wm/FlymeDimWindow;->applyFlag(IIZ)I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    iget v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->userId:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v0, :cond_71

    move v1, v4

    goto :goto_72

    :cond_71
    move v1, v2

    .line 296
    .local v1, "change":Z
    :goto_72
    iget-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mUserFlags:Landroid/util/SparseIntArray;

    iget v5, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->userId:I

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    invoke-direct {p0, v2}, Lcom/android/server/wm/FlymeDimWindow;->updateWindow(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    .line 298
    iget v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mLastFlags:I

    if-eqz v3, :cond_89

    .line 299
    iget-object v3, p0, Lcom/android/server/wm/FlymeDimWindow;->mUiHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    :cond_89
    iget-boolean v3, p0, Lcom/android/server/wm/FlymeDimWindow;->isCtsRunning:Z

    if-nez v3, :cond_a4

    .line 302
    iget-boolean v3, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    if-nez v3, :cond_9b

    iget-boolean v3, p1, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->show:Z

    if-eqz v3, :cond_9b

    .line 303
    iput-boolean v4, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/wm/FlymeDimWindow;->addDimWindow()V

    goto :goto_a4

    .line 306
    :cond_9b
    if-eqz v1, :cond_a4

    iget-boolean v3, p0, Lcom/android/server/wm/FlymeDimWindow;->isAdded:Z

    if-eqz v3, :cond_a4

    .line 307
    invoke-direct {p0, v2}, Lcom/android/server/wm/FlymeDimWindow;->updateWindow(Z)V

    .line 311
    :cond_a4
    :goto_a4
    return-void
.end method
