.class public Lcom/meizu/settings/voicewakeup/LoadingView;
.super Landroid/view/SurfaceView;
.source "LoadingView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;
    }
.end annotation


# instance fields
.field private final APART_ONE:I

.field private final APART_TWO:I

.field private DM_DENSITY:F

.field private final RADIUS:F

.field private final TAG:Ljava/lang/String;

.field private final TRANSPARENCY_MOVE_FIRST:I

.field private final TRANSPARENCY_MOVE_LAST:I

.field private final TRANSPARENCY_MOVE_SECOND:I

.field private final TRANSPARENCY_MOVE_THIRD:I

.field private count:I

.field private isRunning:Z

.field private mContext:Landroid/content/Context;

.field mLoadingRunnable:Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;

.field mThread:Ljava/lang/Thread;

.field private transparency:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 50
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x40100000  # 2.25f

    .line 18
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->RADIUS:F

    const-string v0, "LoadingView"

    .line 19
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TAG:Ljava/lang/String;

    const/high16 v1, 0x40200000  # 2.5f

    .line 20
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->DM_DENSITY:F

    const/16 v1, 0xfa

    .line 23
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_FIRST:I

    const/16 v1, 0xb4

    .line 24
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_SECOND:I

    const/16 v1, 0x90

    .line 25
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_THIRD:I

    const/16 v1, 0x32

    .line 26
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_LAST:I

    const/16 v1, 0x12

    .line 27
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_ONE:I

    const/16 v1, 0x24

    .line 28
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_TWO:I

    const/4 v1, 0x5

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 29
    fill-array-data v3, :array_72

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_80

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_8e

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_9c

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_aa

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->transparency:[[I

    .line 45
    iput v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    .line 46
    iput-boolean v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    .line 51
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mContext:Landroid/content/Context;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadingView | context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/LoadingView;->init()V

    return-void

    :array_72
    .array-data 4
        0x32
        0x32
        0x90
        0xb4
        0xfa
    .end array-data

    :array_80
    .array-data 4
        0xfa
        0x32
        0x32
        0x90
        0xb4
    .end array-data

    :array_8e
    .array-data 4
        0xb4
        0xfa
        0x32
        0x32
        0x90
    .end array-data

    :array_9c
    .array-data 4
        0x90
        0xb4
        0xfa
        0x32
        0x32
    .end array-data

    :array_aa
    .array-data 4
        0x32
        0x90
        0xb4
        0xfa
        0x32
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x40100000  # 2.25f

    .line 18
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->RADIUS:F

    const-string v0, "LoadingView"

    .line 19
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TAG:Ljava/lang/String;

    const/high16 v1, 0x40200000  # 2.5f

    .line 20
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->DM_DENSITY:F

    const/16 v1, 0xfa

    .line 23
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_FIRST:I

    const/16 v1, 0xb4

    .line 24
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_SECOND:I

    const/16 v1, 0x90

    .line 25
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_THIRD:I

    const/16 v1, 0x32

    .line 26
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_LAST:I

    const/16 v1, 0x12

    .line 27
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_ONE:I

    const/16 v1, 0x24

    .line 28
    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_TWO:I

    const/4 v1, 0x5

    new-array v2, v1, [[I

    new-array v3, v1, [I

    .line 29
    fill-array-data v3, :array_7a

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_88

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_96

    const/4 v5, 0x2

    aput-object v3, v2, v5

    new-array v3, v1, [I

    fill-array-data v3, :array_a4

    const/4 v5, 0x3

    aput-object v3, v2, v5

    new-array v1, v1, [I

    fill-array-data v1, :array_b2

    const/4 v3, 0x4

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->transparency:[[I

    .line 45
    iput v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    .line 46
    iput-boolean v4, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadingView | context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",attrs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mContext:Landroid/content/Context;

    .line 68
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/LoadingView;->init()V

    return-void

    :array_7a
    .array-data 4
        0x32
        0x32
        0x90
        0xb4
        0xfa
    .end array-data

    :array_88
    .array-data 4
        0xfa
        0x32
        0x32
        0x90
        0xb4
    .end array-data

    :array_96
    .array-data 4
        0xb4
        0xfa
        0x32
        0x32
        0x90
    .end array-data

    :array_a4
    .array-data 4
        0x90
        0xb4
        0xfa
        0x32
        0x32
    .end array-data

    :array_b2
    .array-data 4
        0x32
        0x90
        0xb4
        0xfa
        0x32
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40100000  # 2.25f

    .line 18
    iput p2, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->RADIUS:F

    const-string p2, "LoadingView"

    .line 19
    iput-object p2, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40200000  # 2.5f

    .line 20
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->DM_DENSITY:F

    const/16 v0, 0xfa

    .line 23
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_FIRST:I

    const/16 v0, 0xb4

    .line 24
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_SECOND:I

    const/16 v0, 0x90

    .line 25
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_THIRD:I

    const/16 v0, 0x32

    .line 26
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->TRANSPARENCY_MOVE_LAST:I

    const/16 v0, 0x12

    .line 27
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_ONE:I

    const/16 v0, 0x24

    .line 28
    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->APART_TWO:I

    const/4 v0, 0x5

    new-array v1, v0, [[I

    new-array v2, v0, [I

    .line 29
    fill-array-data v2, :array_7a

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_88

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_96

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_a4

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-array v0, v0, [I

    fill-array-data v0, :array_b2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->transparency:[[I

    .line 45
    iput v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    .line 46
    iput-boolean v3, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadingView | context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",attrs = ,defStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/meizu/settings/voicewakeup/LoadingView;->init()V

    return-void

    :array_7a
    .array-data 4
        0x32
        0x32
        0x90
        0xb4
        0xfa
    .end array-data

    :array_88
    .array-data 4
        0xfa
        0x32
        0x32
        0x90
        0xb4
    .end array-data

    :array_96
    .array-data 4
        0xb4
        0xfa
        0x32
        0x32
        0x90
    .end array-data

    :array_a4
    .array-data 4
        0x90
        0xb4
        0xfa
        0x32
        0x32
    .end array-data

    :array_b2
    .array-data 4
        0x32
        0x90
        0xb4
        0xfa
        0x32
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/settings/voicewakeup/LoadingView;)F
    .registers 1

    .line 16
    iget p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->DM_DENSITY:F

    return p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/voicewakeup/LoadingView;)Z
    .registers 1

    .line 16
    iget-boolean p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/voicewakeup/LoadingView;)I
    .registers 1

    .line 16
    iget p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    return p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/voicewakeup/LoadingView;I)I
    .registers 2

    .line 16
    iput p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    return p1
.end method

.method static synthetic access$208(Lcom/meizu/settings/voicewakeup/LoadingView;)I
    .registers 3

    .line 16
    iget v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->count:I

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/settings/voicewakeup/LoadingView;)[[I
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->transparency:[[I

    return-object p0
.end method

.method private init()V
    .registers 3

    const-string v0, "LoadingView"

    const-string v1, "init"

    .line 72
    invoke-static {v0, v1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/meizu/settings/voicewakeup/DisplayUtil;->initDisplayDm(Landroid/app/Activity;)V

    .line 74
    invoke-static {}, Lcom/meizu/settings/voicewakeup/DisplayUtil;->getDisplayDm()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->DM_DENSITY:F

    .line 75
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    .line 76
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    const/4 v1, -0x3

    .line 77
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 78
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 79
    new-instance v1, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;-><init>(Lcom/meizu/settings/voicewakeup/LoadingView;Landroid/view/SurfaceHolder;)V

    iput-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mLoadingRunnable:Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated | holder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadingView"

    invoke-static {v0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    .line 91
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mLoadingRunnable:Lcom/meizu/settings/voicewakeup/LoadingView$LoadingRunnable;

    const-string v2, "Loading Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mThread:Ljava/lang/Thread;

    .line 92
    iget-object v0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 93
    iget-object p0, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed | holder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LoadingView"

    invoke-static {v0, p1}, Lcom/meizu/settings/voicewakeup/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->isRunning:Z

    .line 101
    :try_start_19
    iget-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_23
    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/meizu/settings/voicewakeup/LoadingView;->mThread:Ljava/lang/Thread;

    return-void
.end method
