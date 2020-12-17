.class Lcom/meizu/settings/applications/ManageApplications$6;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ManageApplications;->setObjectAnimator(Landroid/view/View;FFIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;

.field final synthetic val$isFadeIn:Z


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;Z)V
    .registers 3

    .line 2334
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iput-boolean p2, p0, Lcom/meizu/settings/applications/ManageApplications$6;->val$isFadeIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2346
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->val$isFadeIn:Z

    if-nez p1, :cond_1d

    .line 2347
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$900(Lcom/meizu/settings/applications/ManageApplications;)Lcom/meizu/settings/widget/SearchView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    .line 2348
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$700(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    :cond_1d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 2337
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->val$isFadeIn:Z

    if-eqz p1, :cond_2a

    .line 2338
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$3200(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/Menu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2339
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$3200(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/Menu;

    move-result-object p1

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2340
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$6;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$700(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    return-void
.end method
