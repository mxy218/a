.class Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;)V
    .registers 2

    .line 121
    iput-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 123
    iput p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 144
    iget p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    iget-object v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_1d

    .line 145
    iget-object p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    iget-object p1, p1, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 146
    invoke-interface {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 148
    :cond_1a
    invoke-virtual {p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->onEnd()V

    :cond_1d
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 127
    iget-boolean p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    if-eqz p1, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 131
    iget-object p0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    iget-object p0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->mListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz p0, :cond_12

    const/4 p1, 0x0

    .line 132
    invoke-interface {p0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_12
    return-void
.end method

.method onEnd()V
    .registers 2

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyEndCount:I

    .line 138
    iput-boolean v0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->mProxyStarted:Z

    .line 139
    iget-object p0, p0, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet$1;->this$0:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-virtual {p0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method
