.class Lcom/meizu/common/widget/EnhanceSeekBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnhanceSeekBar.java"


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

    .line 1123
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$4;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1126
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1127
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$4;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$402(Lcom/meizu/common/widget/EnhanceSeekBar;Z)Z

    return-void
.end method
