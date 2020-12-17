.class public Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;
.super Lcom/flyme/systemui/statusbar/policy/FlymeDateView;
.source "FlymeLunarDateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;
    }
.end annotation


# instance fields
.field private mRunning:Z

.field private mTask:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/FlymeDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$102(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Z)Z
    .registers 2

    .line 16
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->mRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;)Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->mTask:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    return-object p1
.end method


# virtual methods
.method protected updateClock()V
    .registers 3

    .line 27
    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->mTask:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    if-nez v0, :cond_15

    .line 29
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$1;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->mTask:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    .line 30
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->mTask:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 32
    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method
