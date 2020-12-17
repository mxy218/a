.class Lcom/meizu/settings/display/QcomDisplayWrapper$6;
.super Ljava/lang/Object;
.source "QcomDisplayWrapper.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/QcomDisplayWrapper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/QcomDisplayWrapper;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$602(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 197
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$600(Lcom/meizu/settings/display/QcomDisplayWrapper;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 198
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 199
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    .line 200
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$700(Lcom/meizu/settings/display/QcomDisplayWrapper;)V

    :cond_1f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 192
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$6;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$602(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z

    return-void
.end method
