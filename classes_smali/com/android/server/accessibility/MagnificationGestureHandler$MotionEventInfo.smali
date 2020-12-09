.class final Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MotionEventInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final sLock:Ljava/lang/Object;

.field private static sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field private static sPoolSize:I


# instance fields
.field public event:Landroid/view/MotionEvent;

.field private mInPool:Z

.field private mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field public policyFlags:I

.field public rawEvent:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 990
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 1

    .line 987
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2

    .line 987
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    return-object p1
.end method

.method private clear()V
    .registers 2

    .line 1048
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1049
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$900(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1050
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1051
    return-void
.end method

.method static countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I
    .registers 4

    .line 1054
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1055
    :cond_4
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1056
    invoke-static {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I

    move-result p0

    add-int/2addr v0, p0

    .line 1055
    return v0
.end method

.method private initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    .line 1027
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1028
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    .line 1029
    iput p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    .line 1030
    return-void
.end method

.method public static obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 5

    .line 1003
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    invoke-static {}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtainInternal()Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    .line 1005
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->initialize(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1006
    monitor-exit v0

    return-object v1

    .line 1007
    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method private static obtainInternal()Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;
    .registers 2

    .line 1013
    sget v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    if-lez v0, :cond_15

    .line 1014
    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1015
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1016
    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    sput-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1017
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1018
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    goto :goto_1a

    .line 1020
    :cond_15
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    invoke-direct {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;-><init>()V

    .line 1022
    :goto_1a
    return-object v0
.end method

.method public static toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;
    .registers 5

    .line 1060
    const-string v0, ""

    if-nez p0, :cond_5

    .line 1061
    goto :goto_2f

    .line 1063
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    .line 1062
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1063
    invoke-static {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1060
    :goto_2f
    return-object v0
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .line 1033
    sget-object v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    if-nez v1, :cond_20

    .line 1037
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->clear()V

    .line 1038
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 1039
    sget v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPoolSize:I

    .line 1040
    sget-object v1, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mNext:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1041
    sput-object p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->sPool:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 1042
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->mInPool:Z

    .line 1044
    :cond_1e
    monitor-exit v0

    .line 1045
    return-void

    .line 1035
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already recycled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1044
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
