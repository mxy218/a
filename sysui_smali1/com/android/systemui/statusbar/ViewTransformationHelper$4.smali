.class Lcom/android/systemui/statusbar/ViewTransformationHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewTransformationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ViewTransformationHelper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .registers 2

    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 146
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->mCancelled:Z

    if-nez p1, :cond_b

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    goto :goto_10

    .line 149
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$4;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->access$100(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    :goto_10
    return-void
.end method
