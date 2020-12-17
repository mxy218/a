.class Lcom/meizu/settings/display/QcomDisplayWrapper$4;
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

    .line 154
    iput-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$502(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$500(Lcom/meizu/settings/display/QcomDisplayWrapper;)Z

    move-result p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-static {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$000(Lcom/meizu/settings/display/QcomDisplayWrapper;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/display/BluelightUtils;->isBluelightReductionEnabled(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 163
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {v1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setEyeProtectLevel(I)Z

    .line 164
    iget-object p1, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getSavedEyeProtectLevel()I

    move-result v0

    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    invoke-virtual {p0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->getCurrentModeIdBaseline()I

    move-result p0

    add-int/2addr v0, p0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/display/QcomDisplayWrapper;->setDefaultEyeProtectLevel(I)Z

    :cond_38
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/meizu/settings/display/QcomDisplayWrapper$4;->this$0:Lcom/meizu/settings/display/QcomDisplayWrapper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/display/QcomDisplayWrapper;->access$502(Lcom/meizu/settings/display/QcomDisplayWrapper;Z)Z

    return-void
.end method
