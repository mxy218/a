.class Lcom/meizu/pps/observer/PPSProcess;
.super Ljava/lang/Object;
.source "PPSProcess.java"


# instance fields
.field public mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public mCreateReason:Ljava/lang/String;

.field public mCreateTime:J

.field public mCurAdj:I

.field public mCurOomPid:I

.field public mCurOomString:Ljava/lang/String;

.field public mFlags:I

.field public mLastActiveTime:J

.field public mName:Ljava/lang/String;

.field private final mNotifyList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPid:I

.field public mPss:I

.field public mRss:I

.field public mSetAdj:I

.field public mSetOomPid:I

.field public mSetOomString:Ljava/lang/String;

.field public mShowUI:Z

.field private final mWinList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"  # Ljava/lang/String;
    .param p3, "pid"  # I
    .param p4, "reason"  # Ljava/lang/String;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    .line 49
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    iput-object p2, p0, Lcom/meizu/pps/observer/PPSProcess;->mName:Ljava/lang/String;

    .line 51
    iput p3, p0, Lcom/meizu/pps/observer/PPSProcess;->mPid:I

    .line 52
    iput-object p4, p0, Lcom/meizu/pps/observer/PPSProcess;->mCreateReason:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mCreateTime:J

    .line 54
    iget-wide v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mCreateTime:J

    iput-wide v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mLastActiveTime:J

    .line 55
    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .registers 2
    .param p1, "flags"  # I

    .line 123
    invoke-virtual {p0, p1, p1}, Lcom/meizu/pps/observer/PPSProcess;->setFlags(II)V

    .line 124
    return-void
.end method

.method public clearFlags(I)V
    .registers 3
    .param p1, "flags"  # I

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/meizu/pps/observer/PPSProcess;->setFlags(II)V

    .line 128
    return-void
.end method

.method public destroyWindow()V
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mLastActiveTime:J

    .line 119
    sget v0, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {p0, v0}, Lcom/meizu/pps/observer/PPSProcess;->clearFlags(I)V

    .line 120
    return-void
.end method

.method public hideWindow(I)Z
    .registers 5
    .param p1, "winId"  # I

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "change":Z
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 106
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mLastActiveTime:J

    .line 109
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {p0, v1}, Lcom/meizu/pps/observer/PPSProcess;->clearFlags(I)V

    .line 110
    const/4 v0, 0x1

    .line 113
    :cond_2a
    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public notifyPosted(I)Z
    .registers 5
    .param p1, "id"  # I

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "change":Z
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 68
    iget v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    sget v2, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    .line 69
    const/4 v0, 0x1

    .line 71
    :cond_15
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    invoke-virtual {p0, v1}, Lcom/meizu/pps/observer/PPSProcess;->addFlags(I)V

    .line 74
    :cond_23
    return v0
.end method

.method public notifyRemoved(I)Z
    .registers 5
    .param p1, "id"  # I

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "change":Z
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 80
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mNotifyList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 82
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->NOTIFICATION:I

    invoke-virtual {p0, v1}, Lcom/meizu/pps/observer/PPSProcess;->clearFlags(I)V

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_24
    return v0
.end method

.method public setAdj(I)V
    .registers 2
    .param p1, "adj"  # I

    .line 58
    iput p1, p0, Lcom/meizu/pps/observer/PPSProcess;->mCurAdj:I

    .line 59
    return-void
.end method

.method public setFlags(II)V
    .registers 5
    .param p1, "flags"  # I
    .param p2, "mask"  # I

    .line 131
    iget v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    .line 132
    return-void
.end method

.method public setOomPid(I)V
    .registers 2
    .param p1, "oomPid"  # I

    .line 62
    iput p1, p0, Lcom/meizu/pps/observer/PPSProcess;->mCurOomPid:I

    .line 63
    return-void
.end method

.method public setPss(II)V
    .registers 3
    .param p1, "pss"  # I
    .param p2, "rss"  # I

    .line 135
    iput p1, p0, Lcom/meizu/pps/observer/PPSProcess;->mPss:I

    .line 136
    iput p2, p0, Lcom/meizu/pps/observer/PPSProcess;->mRss:I

    .line 137
    return-void
.end method

.method public showWindow(I)Z
    .registers 5
    .param p1, "winId"  # I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "change":Z
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 92
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mWinList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iget v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mFlags:I

    sget v2, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1e

    .line 94
    const/4 v0, 0x1

    .line 96
    :cond_1e
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->VISIBLE:I

    invoke-virtual {p0, v1}, Lcom/meizu/pps/observer/PPSProcess;->addFlags(I)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/meizu/pps/observer/PPSProcess;->mLastActiveTime:J

    .line 98
    sget v1, Lcom/meizu/common/pps/Consts$ProcessFlags;->SHOWNUI:I

    invoke-virtual {p0, v1}, Lcom/meizu/pps/observer/PPSProcess;->addFlags(I)V

    .line 100
    :cond_2e
    return v0
.end method
