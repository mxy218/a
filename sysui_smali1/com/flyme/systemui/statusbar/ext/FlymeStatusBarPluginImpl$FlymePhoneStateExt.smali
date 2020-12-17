.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# instance fields
.field private mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

.field private mShowRoaming:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mShowRoaming:Z

    .line 697
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mShowRoaming:Z

    .line 698
    new-instance p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    invoke-direct {p2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;-><init>()V

    iput-object p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    .line 699
    iget-object p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_g:I

    iput v0, p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_G:I

    .line 700
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_e:I

    iput v0, p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_E:I

    .line 701
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h:I

    iput v0, p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H:I

    .line 702
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g:I

    iput v0, p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_3G:I

    if-eqz p1, :cond_26

    .line 703
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus:I

    goto :goto_28

    :cond_26
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g:I

    :goto_28
    iput p1, p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G:I

    .line 704
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_1x:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_1X:I

    .line 705
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h_plus:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H_PLUS:I

    .line 706
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G_PLUS:I

    return-void
.end method


# virtual methods
.method public createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;
    .registers 4

    .line 716
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->mz_status_bar_mobile_signal_group:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getNetWorkIcons()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;
    .registers 1

    .line 711
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    return-object p0
.end method

.method public getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;
    .registers 1

    .line 733
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;->mShowRoaming:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->SHOW_IN_DATA:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    goto :goto_9

    :cond_7
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->NO_SHOW:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    :goto_9
    return-object p0
.end method

.method public isAnotherCardCalling(ILandroid/util/SparseArray;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    .line 738
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3a

    .line 739
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAnotherCardCalling: cur="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeStatusBarPluginImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_37

    .line 742
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->inPhoneCall()Z

    move-result p0

    return p0

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3a
    return p0
.end method

.method public isShowVoice()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
