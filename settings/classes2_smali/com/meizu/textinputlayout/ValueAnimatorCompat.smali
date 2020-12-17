.class Lcom/meizu/textinputlayout/ValueAnimatorCompat;
.super Ljava/lang/Object;
.source "ValueAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;,
        Lcom/meizu/textinputlayout/ValueAnimatorCompat$Creator;,
        Lcom/meizu/textinputlayout/ValueAnimatorCompat$AnimatorUpdateListener;
    }
.end annotation


# instance fields
.field private final mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;


# direct methods
.method constructor <init>(Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;)V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->cancel()V

    return-void
.end method

.method public getAnimatedFloatValue()F
    .registers 1

    .line 176
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->getAnimatedFloatValue()F

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->isRunning()Z

    move-result p0

    return p0
.end method

.method public setDuration(I)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->setDuration(I)V

    return-void
.end method

.method public setFloatValues(FF)V
    .registers 3

    .line 172
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->setFloatValues(FF)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setUpdateListener(Lcom/meizu/textinputlayout/ValueAnimatorCompat$AnimatorUpdateListener;)V
    .registers 4

    if-eqz p1, :cond_d

    .line 129
    iget-object v0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    new-instance v1, Lcom/meizu/textinputlayout/ValueAnimatorCompat$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$1;-><init>(Lcom/meizu/textinputlayout/ValueAnimatorCompat;Lcom/meizu/textinputlayout/ValueAnimatorCompat$AnimatorUpdateListener;)V

    invoke-virtual {v0, v1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->setUpdateListener(Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    goto :goto_13

    .line 136
    :cond_d
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->setUpdateListener(Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl$AnimatorUpdateListenerProxy;)V

    :goto_13
    return-void
.end method

.method public start()V
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/meizu/textinputlayout/ValueAnimatorCompat;->mImpl:Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;

    invoke-virtual {p0}, Lcom/meizu/textinputlayout/ValueAnimatorCompat$Impl;->start()V

    return-void
.end method
