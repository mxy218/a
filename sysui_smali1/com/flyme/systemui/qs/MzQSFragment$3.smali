.class Lcom/flyme/systemui/qs/MzQSFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzQSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSFragment;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSFragment;)V
    .registers 2

    .line 397
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$3;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 400
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$3;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSFragment;->access$002(Lcom/flyme/systemui/qs/MzQSFragment;Z)Z

    .line 401
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment$3;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->access$100(Lcom/flyme/systemui/qs/MzQSFragment;)V

    return-void
.end method
