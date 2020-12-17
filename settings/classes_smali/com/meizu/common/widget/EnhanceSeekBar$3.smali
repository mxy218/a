.class Lcom/meizu/common/widget/EnhanceSeekBar$3;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;->startAuraHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .registers 2

    .line 1114
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$3;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1118
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$3;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$300(Lcom/meizu/common/widget/EnhanceSeekBar;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    invoke-static {v0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$202(Lcom/meizu/common/widget/EnhanceSeekBar;I)I

    .line 1119
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$3;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
