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
.field private mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

.field private mWindowModeDim:Lcom/android/server/wm/WindowToken;

.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 4673
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    .line 4674
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    .line 4676
    invoke-static {p1}, Lcom/android/server/wm/FlymeDimWindow;->getDimWindow(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/FlymeDimWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    .line 4678
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/WindowToken;

    .line 4770
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    .line 4771
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v1, 0x805

    if-ne v0, v1, :cond_12

    .line 4772
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWindowModeDim:Lcom/android/server/wm/WindowToken;

    .line 4773
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4775
    :cond_12
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 4696
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .registers 11
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "imeContainer"  # Lcom/android/server/wm/WindowContainer;

    .line 4699
    const/4 v0, 0x1

    if-eqz p2, :cond_b

    .line 4700
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 4701
    .local v1, "needAssignIme":Z
    :goto_c
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c4

    .line 4702
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    .line 4705
    .local v3, "wt":Lcom/android/server/wm/WindowToken;
    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x7f2

    if-ne v4, v5, :cond_32

    .line 4706
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-static {v4}, Lcom/android/server/wm/DisplayContent;->access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4707
    goto/16 :goto_c0

    .line 4710
    :cond_32
    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x804

    if-eq v4, v5, :cond_8a

    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x803

    if-eq v4, v5, :cond_8a

    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x807

    if-ne v4, v5, :cond_45

    goto :goto_8a

    .line 4725
    :cond_45
    iget v4, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v5, 0x808

    if-ne v4, v5, :cond_55

    .line 4726
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWindowModeDim:Lcom/android/server/wm/WindowToken;

    if-eqz v4, :cond_55

    .line 4727
    iget-object v4, v4, Lcom/android/server/wm/WindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/wm/WindowToken;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4728
    goto :goto_c0

    .line 4732
    :cond_55
    iget-boolean v4, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v4, :cond_60

    .line 4733
    const v4, 0x40000002  # 2.0000005f

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4734
    goto :goto_c0

    .line 4736
    :cond_60
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4737
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowToken;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 4739
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v6, v3, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v4

    .line 4742
    .local v4, "layer":I
    if-eqz v1, :cond_c0

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v6, 0x7dc

    invoke-interface {v5, v6, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v5

    if-lt v4, v5, :cond_c0

    .line 4744
    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {p2, p1, v5, v6}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4745
    const/4 v1, 0x0

    goto :goto_c0

    .line 4713
    .end local v4  # "layer":I
    :cond_8a
    :goto_8a
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v5, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v6, v3, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v4

    .line 4715
    .restart local v4  # "layer":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isColorFadeShow()Z

    move-result v5

    .line 4716
    .local v5, "colorFadeShow":Z
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFingerprintAuthenticatingInAodMode()Z

    move-result v6

    .line 4717
    .local v6, "isFpAuthenticatingInAod":Z
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mBootAnimationStopped:Z

    if-eqz v7, :cond_b8

    if-eqz v5, :cond_b0

    if-eqz v6, :cond_b8

    .line 4718
    :cond_b0
    const v7, 0x40000065  # 2.000024f

    add-int/2addr v7, v4

    invoke-virtual {v3, p1, v7}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_c0

    .line 4720
    :cond_b8
    const v7, 0x3fffff9d  # 1.9999882f

    add-int/2addr v7, v4

    invoke-virtual {v3, p1, v7}, Lcom/android/server/wm/WindowToken;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 4722
    nop

    .line 4701
    .end local v3  # "wt":Lcom/android/server/wm/WindowToken;
    .end local v4  # "layer":I
    .end local v5  # "colorFadeShow":Z
    .end local v6  # "isFpAuthenticatingInAod":Z
    :cond_c0
    :goto_c0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 4748
    .end local v2  # "j":I
    :cond_c4
    if-eqz v1, :cond_d0

    .line 4749
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const v2, 0x7fffffff

    invoke-virtual {p2, p1, v0, v2}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 4753
    :cond_d0
    const-wide/16 v2, 0x20

    const-string v0, "assignDimWindowLayers"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4754
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWindowModeDim:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/server/wm/FlymeDimWindow;->assignDimLayers(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowToken;)V

    .line 4755
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 4757
    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 4682
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 4683
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    instance-of v1, p1, Lcom/android/server/wm/WindowToken;

    if-eqz v1, :cond_13

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_13

    .line 4688
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 4690
    :cond_13
    return-object v0
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 4668
    check-cast p1, Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->removeChild(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowToken;)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/WindowToken;

    .line 4762
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4763
    iget v0, p1, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v1, 0x805

    if-ne v0, v1, :cond_c

    .line 4764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->mWindowModeDim:Lcom/android/server/wm/WindowToken;

    .line 4766
    :cond_c
    return-void
.end method
