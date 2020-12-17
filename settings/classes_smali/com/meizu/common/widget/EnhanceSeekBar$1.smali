.class Lcom/meizu/common/widget/EnhanceSeekBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
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

    .line 683
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 686
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 687
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    :cond_17
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 693
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 694
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    :cond_17
    return-void
.end method
