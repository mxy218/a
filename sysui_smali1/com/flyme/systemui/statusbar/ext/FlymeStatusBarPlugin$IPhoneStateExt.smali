.class public interface abstract Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPlugin.java"


# virtual methods
.method public abstract createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;
.end method

.method public abstract getNetWorkIcons()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;
.end method

.method public abstract getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;
.end method

.method public abstract isAnotherCardCalling(ILandroid/util/SparseArray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract isShowVoice()Z
.end method
