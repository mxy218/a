.class Lcom/meizu/settings/widget/GlowView$2;
.super Ljava/lang/Object;
.source "GlowView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/widget/GlowView;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/GlowView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/GlowView;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/meizu/settings/widget/GlowView$2;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/widget/GlowView$2;->this$0:Lcom/meizu/settings/widget/GlowView;

    invoke-static {p0}, Lcom/meizu/settings/widget/GlowView;->access$100(Lcom/meizu/settings/widget/GlowView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/settings/widget/GlowView;->access$500(Lcom/meizu/settings/widget/GlowView;Ljava/util/ArrayList;J)V

    return-void
.end method
