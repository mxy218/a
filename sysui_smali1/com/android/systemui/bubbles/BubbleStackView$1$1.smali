.class Lcom/android/systemui/bubbles/BubbleStackView$1$1;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bubbles/BubbleStackView$1;->syncSurfaceAndRun(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFrameWait:I

.field final synthetic this$0:Lcom/android/systemui/bubbles/BubbleStackView$1;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/bubbles/BubbleStackView$1;Ljava/lang/Runnable;)V
    .registers 3

    .line 130
    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->this$0:Lcom/android/systemui/bubbles/BubbleStackView$1;

    iput-object p2, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 135
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->mFrameWait:I

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    .line 139
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->mFrameWait:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->mFrameWait:I

    if-lez p1, :cond_10

    .line 140
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_15

    .line 142
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleStackView$1$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_15
    return-void
.end method
