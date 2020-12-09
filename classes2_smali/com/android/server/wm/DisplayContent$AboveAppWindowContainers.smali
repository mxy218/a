.class final Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;
.super Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AboveAppWindowContainers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 4609
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4610
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    .line 4611
    return-void
.end method


# virtual methods
.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 4628
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4629
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 11

    .line 4632
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    .line 4633
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_c

    move v2, v1

    goto :goto_d

    :cond_c
    move v2, v0

    .line 4634
    :goto_d
    move v3, v2

    move v2, v0

    :goto_f
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6a

    .line 4635
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowToken;

    .line 4638
    iget v5, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v6, 0x7f2

    if-ne v5, v6, :cond_33

    .line 4639
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v5}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, p1, v5, v1}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4640
    goto :goto_67

    .line 4642
    :cond_33
    iget-boolean v5, v4, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v5, :cond_3e

    .line 4643
    const v5, 0x40000002  # 2.0000005f

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4644
    goto :goto_67

    .line 4646
    :cond_3e
    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4647
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowToken;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4649
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v6, v4, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v7, v4, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v5, v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v5

    .line 4652
    if-eqz v3, :cond_67

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v7, 0x7dc

    invoke-interface {v6, v7, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v6

    if-lt v5, v6, :cond_67

    .line 4654
    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {p2, p1, v3, v4}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4655
    move v3, v0

    .line 4634
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 4658
    :cond_6a
    if-eqz v3, :cond_76

    .line 4659
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4661
    :cond_76
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 4615
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4616
    instance-of v1, p1, Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_12

    check-cast p1, Lcom/android/server/wm/WindowToken;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz p1, :cond_12

    .line 4621
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 4623
    :cond_12
    return-object v0
.end method
