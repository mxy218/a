.class public Lflyme/support/v7/widget/RecyclerViewItemAnimator;
.super Lflyme/support/v7/widget/SimpleItemAnimator;
.source "RecyclerViewItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;,
        Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;,
        Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;,
        Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;,
        Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;
    }
.end annotation


# static fields
.field private static DEFAULT_DURATION:I = 0x104

.field private static DEFAULT_SCALE:F = 0.94f

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAddInterpolator:Landroid/view/animation/Interpolator;

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDuration:I

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecylerView:Lflyme/support/v7/widget/RecyclerView;

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 6

    .line 50
    invoke-direct {p0}, Lflyme/support/v7/widget/SimpleItemAnimator;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 42
    sget v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->DEFAULT_DURATION:I

    iput v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mDuration:I

    .line 43
    sget v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->DEFAULT_SCALE:F

    iput v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mScale:F

    .line 51
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRecylerView:Lflyme/support/v7/widget/RecyclerView;

    .line 52
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_82

    .line 53
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3  # 0.33f

    invoke-direct {p1, v2, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddInterpolator:Landroid/view/animation/Interpolator;

    .line 54
    new-instance p1, Landroid/view/animation/PathInterpolator;

    invoke-direct {p1, v2, v1, v2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveInterpolator:Landroid/view/animation/Interpolator;

    .line 55
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e23d70a  # 0.16f

    const v3, 0x3e4ccccd  # 0.2f

    invoke-direct {p1, v2, v1, v3, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_97

    .line 57
    :cond_82
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddInterpolator:Landroid/view/animation/Interpolator;

    .line 58
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveInterpolator:Landroid/view/animation/Interpolator;

    .line 59
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    :goto_97
    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->animateMoveImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;)V

    return-void
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->animateChangeImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->animateAddImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;)V

    return-void
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lflyme/support/v7/widget/RecyclerViewItemAnimator;)V
    .registers 1

    .line 19
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method private animateAddImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;)V
    .registers 7

    .line 278
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 280
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 281
    new-instance v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$5;

    invoke-direct {v2, p0, p1, v1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$5;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 304
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->setListenerTag(Landroid/view/View;Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;)V

    .line 305
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p1, 0x3f800000  # 1.0f

    .line 306
    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mDuration:I

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 307
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateChangeImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V
    .registers 7

    .line 403
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_9

    .line 404
    :cond_7
    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 405
    :goto_9
    iget-object v2, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_f

    .line 406
    iget-object v1, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_f
    const/4 v2, 0x0

    if-eqz v0, :cond_44

    .line 408
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    .line 408
    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 410
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget v3, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->toX:I

    iget v4, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 412
    iget v3, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->toY:I

    iget v4, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 413
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$7;

    invoke-direct {v3, p0, p1, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$7;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 429
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_44
    if-eqz v1, :cond_6e

    .line 432
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 433
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v2, 0x3f800000  # 1.0f

    .line 435
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    new-instance v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$8;

    invoke-direct {v2, p0, p1, v0, v1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$8;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 451
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_6e
    return-void
.end method

.method private animateMoveImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;)V
    .registers 11

    .line 334
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 335
    iget v1, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->toX:I

    iget v2, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->fromX:I

    sub-int v6, v1, v2

    .line 336
    iget v1, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->toY:I

    iget v2, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->fromY:I

    sub-int v7, v1, v2

    const/4 v1, 0x0

    if-eqz v6, :cond_1a

    .line 338
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_1a
    if-eqz v7, :cond_23

    .line 341
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 343
    :cond_23
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 344
    new-instance v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$6;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$6;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 369
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->setListenerTag(Landroid/view/View;Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;)V

    .line 370
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget p1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mDuration:I

    int-to-long v3, p1

    invoke-virtual {v1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateRemoveImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;)V
    .registers 7

    .line 239
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 240
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 241
    new-instance v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$4;

    invoke-direct {v2, p0, p1, v1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$4;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 260
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->setListenerTag(Landroid/view/View;Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;)V

    .line 261
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mDuration:I

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    .line 263
    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mScale:F

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mScale:F

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget p1, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;->deltaY:I

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private checkTheAnchorViewIsMoveView(I)I
    .registers 4

    const/4 v0, 0x0

    .line 558
    :goto_1
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 559
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    iget v1, v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->layoutPosition:I

    if-ne v1, p1, :cond_20

    .line 560
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->fromBottom:I

    return p0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method private dispatchFinishedWhenDone()V
    .registers 2

    .line 722
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 723
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_9
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;",
            ">;",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_22

    .line 569
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;

    .line 570
    invoke-direct {p0, v1, p2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 571
    iget-object v2, v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 572
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V
    .registers 3

    .line 579
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_7

    .line 580
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    .line 582
    :cond_7
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_e

    .line 583
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    :cond_e
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 589
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_a

    .line 590
    iput-object v2, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_11

    .line 591
    :cond_a
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_27

    .line 592
    iput-object v2, p1, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 597
    :goto_11
    iget-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 598
    iget-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 599
    iget-object p1, p2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 600
    invoke-virtual {p0, p2, v3}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_27
    return v3
.end method

.method private getOriginalBottomY(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I
    .registers 3

    if-eqz p1, :cond_14

    .line 538
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 539
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->checkTheAnchorViewIsMoveView(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_13

    .line 541
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    :cond_13
    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 694
    sget-object v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 695
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 697
    :cond_f
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 698
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method private setAddInfoDeltaY(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;",
            ">;)V"
        }
    .end annotation

    .line 494
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->sortItemList(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 497
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_9e

    if-nez v1, :cond_40

    .line 500
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget v2, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->layoutPosition:I

    .line 501
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget v4, v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->layoutPosition:I

    if-nez v4, :cond_23

    move v3, v0

    goto :goto_35

    .line 504
    :cond_23
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRecylerView:Lflyme/support/v7/widget/RecyclerView;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 505
    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v4, :cond_35

    .line 506
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 509
    :cond_35
    :goto_35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iput v0, v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->deltaY:I

    move v4, v2

    move v2, v0

    goto :goto_88

    .line 511
    :cond_40
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget v4, v4, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->layoutPosition:I

    sub-int v2, v4, v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_65

    .line 513
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v3

    .line 514
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iput v2, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->deltaY:I

    goto :goto_88

    .line 516
    :cond_65
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRecylerView:Lflyme/support/v7/widget/RecyclerView;

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 517
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->getOriginalBottomY(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    .line 518
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v3

    .line 519
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iput v2, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->deltaY:I

    :goto_88
    if-eqz v2, :cond_99

    .line 524
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v5, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_99
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto/16 :goto_7

    :cond_9e
    return-void
.end method

.method private setListenerTag(Landroid/view/View;Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;)V
    .registers 4

    const/high16 p0, -0x72000000

    .line 461
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 462
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;

    .line 463
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;->onAnimationCancel(Landroid/view/View;)V

    .line 464
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$VpaListenerAdapter;->onAnimationEnd(Landroid/view/View;)V

    .line 466
    :cond_14
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private sortItemList(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 475
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p0, v0, :cond_3b

    .line 476
    :goto_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p0

    if-ge v1, v0, :cond_38

    add-int/lit8 v0, v1, -0x1

    .line 477
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget v2, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->layoutPosition:I

    .line 478
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget v3, v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->layoutPosition:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_35

    .line 480
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    .line 481
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_38
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3b
    return-void
.end method


# virtual methods
.method public animateAdd(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5

    .line 268
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 269
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 270
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mScale:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 271
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mScale:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 272
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    new-instance v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;-><init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILflyme/support/v7/widget/RecyclerViewItemAnimator$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x1

    if-ne v1, v2, :cond_b

    .line 378
    invoke-virtual {p0, p1, v8}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    const/4 v0, 0x0

    return v0

    .line 381
    :cond_b
    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 382
    iget-object v4, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 383
    iget-object v5, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v5

    .line 384
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int v6, p5, p3

    int-to-float v6, v6

    sub-float/2addr v6, v3

    float-to-int v6, v6

    sub-int v7, p6, p4

    int-to-float v7, v7

    sub-float/2addr v7, v4

    float-to-int v7, v7

    .line 388
    iget-object v9, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v9, v3}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 389
    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 390
    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3, v5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    if-eqz v2, :cond_52

    .line 393
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 394
    iget-object v3, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v4, v6

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 395
    iget-object v3, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 396
    iget-object v3, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 398
    :cond_52
    iget-object v9, v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v10, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;-><init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIIILflyme/support/v7/widget/RecyclerViewItemAnimator$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v8
.end method

.method public animateMove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 16

    .line 313
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float p2, p2

    .line 314
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v4, p2

    int-to-float p2, p3

    .line 315
    iget-object p3, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v5, p2

    .line 316
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 320
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0

    :cond_22
    if-eqz p2, :cond_29

    neg-int p2, p2

    int-to-float p2, p2

    .line 324
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_29
    if-eqz p3, :cond_30

    neg-int p2, p3

    int-to-float p2, p2

    .line 327
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 329
    :cond_30
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    iget-object p3, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int v8, v5, p3

    const/4 v9, 0x0

    move-object v1, p2

    move-object v2, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v9}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;-><init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIIIIILflyme/support/v7/widget/RecyclerViewItemAnimator$1;)V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public animateRemove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 5

    .line 222
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->resetAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 223
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 224
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 227
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRecylerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_16
    sub-int/2addr v1, v0

    goto :goto_2e

    .line 229
    :cond_18
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRecylerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 230
    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_2d

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_16

    :cond_2d
    const/4 v1, 0x0

    .line 234
    :goto_2e
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    new-instance v0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;-><init>(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILflyme/support/v7/widget/RecyclerViewItemAnimator$1;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 3
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method cancelAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 820
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_1a

    .line 821
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method public endAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 9

    .line 606
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 608
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 610
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 611
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    .line 612
    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_2e

    .line 613
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 614
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 615
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 616
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 619
    :cond_31
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimation(Ljava/util/List;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 620
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v1, :cond_46

    .line 621
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 622
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchRemoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 624
    :cond_46
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 625
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 626
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 629
    :cond_54
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5c
    if-ltz v1, :cond_77

    .line 630
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 631
    invoke-direct {p0, v4, p1}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimation(Ljava/util/List;Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 632
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 633
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 636
    :cond_77
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7f
    if-ltz v1, :cond_b9

    .line 637
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 638
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_8f
    if-ltz v5, :cond_b6

    .line 639
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    .line 640
    iget-object v6, v6, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_b3

    .line 641
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 642
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 643
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 644
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 645
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 646
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 652
    :cond_b9
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c1
    if-ltz v1, :cond_ee

    .line 653
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 654
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_eb

    .line 655
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 656
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 657
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 658
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 659
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 660
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 661
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_eb
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 668
    :cond_ee
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 680
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 686
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 690
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .registers 8

    .line 729
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_2a

    .line 731
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    .line 732
    iget-object v3, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 733
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 734
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 735
    iget-object v1, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 736
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 738
    :cond_2a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_32
    if-ltz v0, :cond_49

    .line 740
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;

    .line 741
    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchRemoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 742
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 744
    :cond_49
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_51
    const/high16 v2, 0x3f800000  # 1.0f

    if-ltz v0, :cond_7a

    .line 746
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    .line 747
    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 748
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 749
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 750
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 751
    invoke-static {v4, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 752
    iget-object v2, v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 753
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_51

    .line 755
    :cond_7a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_82
    if-ltz v0, :cond_92

    .line 757
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_82

    .line 759
    :cond_92
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 760
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9e

    return-void

    .line 764
    :cond_9e
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a6
    if-ltz v0, :cond_e1

    .line 766
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 767
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_b6
    if-ltz v4, :cond_de

    .line 769
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    .line 770
    iget-object v6, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 771
    iget-object v6, v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 772
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 773
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 774
    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 775
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 776
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 777
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_db
    add-int/lit8 v4, v4, -0x1

    goto :goto_b6

    :cond_de
    add-int/lit8 v0, v0, -0x1

    goto :goto_a6

    .line 781
    :cond_e1
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e9
    if-ltz v0, :cond_128

    .line 783
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 784
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_f9
    if-ltz v4, :cond_125

    .line 786
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 787
    iget-object v6, v5, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 788
    invoke-static {v6, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 789
    invoke-static {v6, v2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 790
    invoke-static {v6, v2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 791
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 792
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 793
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 794
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_122

    .line 795
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_122
    add-int/lit8 v4, v4, -0x1

    goto :goto_f9

    :cond_125
    add-int/lit8 v0, v0, -0x1

    goto :goto_e9

    .line 799
    :cond_128
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_130
    if-ltz v0, :cond_15c

    .line 801
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 802
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_140
    if-ltz v2, :cond_159

    .line 804
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->endChangeAnimationIfNecessary(Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;)V

    .line 805
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_156

    .line 806
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_156
    add-int/lit8 v2, v2, -0x1

    goto :goto_140

    :cond_159
    add-int/lit8 v0, v0, -0x1

    goto :goto_130

    .line 811
    :cond_15c
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 812
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 813
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 814
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 816
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 703
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 704
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 705
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 706
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 707
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 708
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 710
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 711
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 712
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 713
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 p0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 p0, 0x1

    :goto_5c
    return p0
.end method

.method public runPendingAnimations()V
    .registers 10

    .line 135
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 136
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 137
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 138
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    return-void

    .line 143
    :cond_29
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->setAddInfoDeltaY(Ljava/util/ArrayList;)V

    .line 145
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;

    .line 146
    invoke-direct {p0, v5}, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->animateRemoveImpl(Lflyme/support/v7/widget/RecyclerViewItemAnimator$RemoveInfo;)V

    goto :goto_34

    .line 148
    :cond_44
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_7a

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 152
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v8, Lflyme/support/v7/widget/RecyclerViewItemAnimator$1;

    invoke-direct {v8, p0, v7}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$1;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_77

    .line 166
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerViewItemAnimator$MoveInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 167
    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_7a

    .line 169
    :cond_77
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_7a
    :goto_7a
    if-eqz v2, :cond_a8

    .line 174
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 175
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v8, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 178
    new-instance v8, Lflyme/support/v7/widget/RecyclerViewItemAnimator$2;

    invoke-direct {v8, p0, v7}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$2;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_a5

    .line 189
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerViewItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 190
    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_a8

    .line 192
    :cond_a5
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_a8
    :goto_a8
    if-eqz v3, :cond_db

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 198
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 199
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 202
    new-instance v7, Lflyme/support/v7/widget/RecyclerViewItemAnimator$3;

    invoke-direct {v7, p0, v3}, Lflyme/support/v7/widget/RecyclerViewItemAnimator$3;-><init>(Lflyme/support/v7/widget/RecyclerViewItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_ce

    if-nez v1, :cond_ce

    if-eqz v2, :cond_ca

    goto :goto_ce

    .line 215
    :cond_ca
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_db

    .line 212
    :cond_ce
    :goto_ce
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerViewItemAnimator$AddInfo;->holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 213
    invoke-static {p0, v7, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_db
    :goto_db
    return-void
.end method
