.class Lcom/flyme/systemui/qs/MzQSTileLayout$5;
.super Ljava/lang/Object;
.source "MzQSTileLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSTileLayout;)V
    .registers 2

    .line 601
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 609
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$900(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1100(Lcom/flyme/systemui/qs/MzQSTileLayout;IIZ)V

    .line 610
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$1000(Lcom/flyme/systemui/qs/MzQSTileLayout;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$902(Lcom/flyme/systemui/qs/MzQSTileLayout;I)I

    .line 611
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-static {p0, v2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$802(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 604
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSTileLayout$5;->this$0:Lcom/flyme/systemui/qs/MzQSTileLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->access$802(Lcom/flyme/systemui/qs/MzQSTileLayout;Z)Z

    return-void
.end method
