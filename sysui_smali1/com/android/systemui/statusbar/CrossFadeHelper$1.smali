.class Lcom/android/systemui/statusbar/CrossFadeHelper$1;
.super Ljava/lang/Object;
.source "CrossFadeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 3

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$endRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_7

    .line 51
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 53
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/CrossFadeHelper$1;->val$view:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
