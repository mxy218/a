.class Lcom/meizu/common/widget/AuraSeekBar$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AuraSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/AuraSeekBar;->startAuraHideAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AuraSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AuraSeekBar;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/meizu/common/widget/AuraSeekBar$3;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 265
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 266
    iget-object p0, p0, Lcom/meizu/common/widget/AuraSeekBar$3;->this$0:Lcom/meizu/common/widget/AuraSeekBar;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/common/widget/AuraSeekBar;->access$302(Lcom/meizu/common/widget/AuraSeekBar;Z)Z

    return-void
.end method
