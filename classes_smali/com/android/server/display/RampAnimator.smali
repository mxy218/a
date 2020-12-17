.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "property":Landroid/util/IntProperty;, "Landroid/util/IntProperty<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 131
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/RampAnimator;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"  # Z

    .line 27
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"  # J

    .line 27
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"  # F

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;
    .param p1, "x1"  # I

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/RampAnimator;

    .line 27
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method private cancelAnimationCallback()V
    .registers 5

    .line 128
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private postAnimationCallback()V
    .registers 5

    .line 124
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .registers 7
    .param p1, "target"  # I
    .param p2, "rate"  # I

    .line 62
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_42

    if-gtz p2, :cond_9

    goto :goto_42

    .line 88
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v0, :cond_21

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_19

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_21

    :cond_19
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_23

    if-gt v3, p1, :cond_23

    .line 92
    :cond_21
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 95
    :cond_23
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq v0, p1, :cond_28

    move v2, v1

    :cond_28
    move v0, v2

    .line 96
    .local v0, "changed":Z
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 99
    iget-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez v2, :cond_41

    iget v2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v2, :cond_41

    .line 100
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 101
    int-to-float v1, v2

    iput v1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 103
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 106
    :cond_41
    return v0

    .line 63
    .end local v0  # "changed":Z
    :cond_42
    :goto_42
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez v0, :cond_4c

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, v0, :cond_4b

    goto :goto_4c

    .line 78
    :cond_4b
    return v2

    .line 64
    :cond_4c
    :goto_4c
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 65
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 66
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 67
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 68
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v3, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {v0, v3, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 69
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_64

    .line 70
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 73
    :cond_64
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_6b

    .line 74
    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 76
    :cond_6b
    return v1
.end method

.method getRate()I
    .registers 2

    .line 185
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 113
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .registers 2
    .param p1, "listener"  # Lcom/android/server/display/RampAnimator$Listener;

    .line 120
    .local p0, "this":Lcom/android/server/display/RampAnimator;, "Lcom/android/server/display/RampAnimator<TT;>;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 121
    return-void
.end method
