.class Lcom/meizu/settings/display/PreviewPagerAdapter$2;
.super Ljava/lang/Object;
.source "PreviewPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/display/PreviewPagerAdapter;->setPreviewLayerInternal(IIIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

.field final synthetic val$lastLayer:Landroid/view/View;

.field final synthetic val$nextLayer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/settings/display/PreviewPagerAdapter;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->this$0:Lcom/meizu/settings/display/PreviewPagerAdapter;

    iput-object p2, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->val$lastLayer:Landroid/view/View;

    iput-object p3, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->val$nextLayer:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->val$lastLayer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->val$nextLayer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/display/PreviewPagerAdapter$2;->val$nextLayer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/meizu/settings/display/PreviewPagerAdapter;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/display/PreviewPagerAdapter$2$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/display/PreviewPagerAdapter$2$1;-><init>(Lcom/meizu/settings/display/PreviewPagerAdapter$2;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
