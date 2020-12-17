.class Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPropertyAnimatorListenerApi14"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    const/high16 p0, 0x7e000000

    .line 101
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 103
    instance-of v0, p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_d

    .line 104
    check-cast p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_13

    .line 107
    invoke-interface {p0, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_f

    .line 76
    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput v1, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 79
    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_19

    iget-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    if-nez v0, :cond_39

    .line 82
    :cond_19
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v1, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v1, :cond_24

    .line 84
    iput-object v2, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_24
    const/high16 v0, 0x7e000000

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 89
    instance-of v1, v0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v1, :cond_31

    .line 90
    move-object v2, v0

    check-cast v2, Landroidx/core/view/ViewPropertyAnimatorListener;

    :cond_31
    if-eqz v2, :cond_36

    .line 93
    invoke-interface {v2, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_36
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    :cond_39
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mAnimEndCalled:Z

    .line 54
    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_f

    const/4 v0, 0x2

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_f
    iget-object p0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorListenerApi14;->mVpa:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 59
    iput-object v1, p0, Landroidx/core/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 60
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1a
    const/high16 p0, 0x7e000000

    .line 62
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 64
    instance-of v0, p0, Landroidx/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_27

    .line 65
    move-object v1, p0

    check-cast v1, Landroidx/core/view/ViewPropertyAnimatorListener;

    :cond_27
    if-eqz v1, :cond_2c

    .line 68
    invoke-interface {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_2c
    return-void
.end method
