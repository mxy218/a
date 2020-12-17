.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

.field private mHadTopUi:Z

.field private mKeyguardShowing:Z

.field private final mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

.field private mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

.field private mScrimAlpha:F

.field private mShowing:Z

.field private final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;)V
    .registers 5

    .line 1524
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1510
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    .line 1525
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 1526
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 1527
    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 1528
    const-class p1, Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/statusbar/IStatusBarService;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 1529
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 1532
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x1

    .line 1533
    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    .line 1535
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1536
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v0, v0, 0x700

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const/4 p2, -0x1

    .line 1539
    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setLayout(II)V

    const/4 p2, 0x2

    .line 1540
    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    const p2, 0x10d0120

    .line 1541
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/16 p2, 0x7e4

    .line 1548
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    const p1, 0x10402c3

    .line 1549
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1551
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    .line 1552
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/content/Context;
    .registers 1

    .line 1504
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;
    .registers 1

    .line 1504
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    return-object p0
.end method

.method private completeDismiss()V
    .registers 3

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceHasTopUi(Z)V

    .line 1760
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private dismissPanel()V
    .registers 1

    .line 1764
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_7

    .line 1765
    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->onDismissed()V

    :cond_7
    return-void
.end method

.method private fixNavBarClipping()V
    .registers 2

    const v0, 0x1020002

    .line 1636
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 1637
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1638
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1639
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 1640
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 1641
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    return-void
.end method

.method private getGlobalActionsLayoutId(Landroid/content/Context;)I
    .registers 3

    .line 1645
    invoke-static {p1}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 1646
    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3000(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1647
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->shouldUsePanel()Z

    move-result p0

    if-eqz p0, :cond_13

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    const/4 p1, 0x2

    if-ne v0, p1, :cond_21

    if-eqz p0, :cond_1e

    .line 1650
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid_seascape:I

    return p0

    .line 1652
    :cond_1e
    sget p0, Lcom/android/systemui/R$layout;->global_actions_column_seascape:I

    return p0

    :cond_21
    if-eqz p0, :cond_26

    .line 1656
    sget p0, Lcom/android/systemui/R$layout;->global_actions_grid:I

    return p0

    .line 1658
    :cond_26
    sget p0, Lcom/android/systemui/R$layout;->global_actions_column:I

    return p0
.end method

.method private initializeLayout()V
    .registers 3

    .line 1608
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getGlobalActionsLayoutId(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 1609
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->fixNavBarClipping()V

    .line 1610
    sget v0, Lcom/android/systemui/R$id;->global_actions_view:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/MultiListLayout;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 1611
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dNZefhFQEiKyxgSvmP1LBM0gtx4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dNZefhFQEiKyxgSvmP1LBM0gtx4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 1612
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$qLnbwfmuMw-GJ7JUyo3Qt6_cEh4;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$qLnbwfmuMw-GJ7JUyo3Qt6_cEh4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1613
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setListViewAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$yTIuIImgAFK3eAYSmNsa3QUABJI;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setRotationListener(Lcom/android/systemui/MultiListLayout$RotationListener;)V

    .line 1623
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/MultiListLayout;->setAdapter(Lcom/android/systemui/MultiListLayout$MultiListAdapter;)V

    .line 1625
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->shouldUsePanel()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1626
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializePanel()V

    .line 1628
    :cond_54
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_64

    .line 1629
    new-instance v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const v0, 0x3e4ccccd  # 0.2f

    .line 1630
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    .line 1632
    :cond_64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initializePanel()V
    .registers 4

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getRotation(Landroid/content/Context;)I

    move-result v0

    .line 1561
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    if-eqz v1, :cond_70

    .line 1564
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_23

    .line 1565
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 1566
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 1567
    iput v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    .line 1573
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$KOOsXb68KZ6uVivL8nC_5NKKiBk;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$KOOsXb68KZ6uVivL8nC_5NKKiBk;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_70

    :cond_2e
    const/4 v0, 0x0

    if-nez v1, :cond_4a

    .line 1579
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-nez v1, :cond_40

    .line 1580
    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    invoke-direct {v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$1;)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    .line 1581
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    iput-boolean v0, v1, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    .line 1587
    :cond_40
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RJgtbpfP8gfKx4bDDYXf9gg3qxs;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$RJgtbpfP8gfKx4bDDYXf9gg3qxs;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 1593
    :cond_4a
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    .line 1595
    sget v0, Lcom/android/systemui/R$id;->global_actions_panel_container:I

    .line 1596
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1597
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1601
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1602
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 1603
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    :cond_70
    :goto_70
    return-void
.end method

.method public static synthetic lambda$b7BjyiDlA1YYZd2S_4WLEfoJbac(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method private resetOrientation()V
    .registers 4

    .line 1782
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mResetOrientationData:Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;

    if-eqz v0, :cond_d

    .line 1783
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iget-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->locked:Z

    iget v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$ResetOrientationData;->rotation:I

    invoke-static {v1, v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    :cond_d
    const/4 v0, 0x1

    .line 1786
    invoke-direct {p0, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setRotationSuggestionsEnabled(Z)V

    return-void
.end method

.method private setRotationSuggestionsEnabled(Z)V
    .registers 5

    .line 1771
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x10

    .line 1775
    :goto_e
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p1, v2, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 1777
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private shouldUsePanel()Z
    .registers 1

    .line 1556
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mPanelController:Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$PanelViewController;->getPanelContent()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .registers 5

    .line 1682
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-nez v1, :cond_7

    return-void

    .line 1685
    :cond_7
    check-cast v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 1686
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 1687
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-eqz p1, :cond_24

    const/16 p1, 0x2010

    .line 1688
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_28

    :cond_24
    const/4 p1, 0x0

    .line 1691
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_28
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .line 1727
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1730
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 1731
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1732
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1733
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1734
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1735
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 1736
    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    .line 1737
    invoke-virtual {v1}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1738
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$b7BjyiDlA1YYZd2S_4WLEfoJbac;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1739
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1740
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$fCJNrp-FfqPrZqs-Y0ogCK3Vd_w;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1741
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1746
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1747
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPanel()V

    .line 1748
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    return-void
.end method

.method dismissImmediately()V
    .registers 2

    const/4 v0, 0x0

    .line 1752
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 1753
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismissPanel()V

    .line 1754
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->resetOrientation()V

    .line 1755
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->completeDismiss()V

    return-void
.end method

.method public synthetic lambda$dismiss$5$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1742
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 1744
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public synthetic lambda$initializeLayout$2$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .registers 2

    .line 1611
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initializeLayout$3$GlobalActionsDialog$ActionsDialog(Landroid/view/View;)V
    .registers 2

    .line 1612
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$initializePanel$0$GlobalActionsDialog$ActionsDialog()V
    .registers 2

    .line 1574
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method public synthetic lambda$initializePanel$1$GlobalActionsDialog$ActionsDialog()V
    .registers 3

    .line 1588
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockAtAngle(Landroid/content/Context;ZI)V

    return-void
.end method

.method public synthetic lambda$show$4$GlobalActionsDialog$ActionsDialog(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1718
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mScrimAlpha:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1720
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .registers 5

    .line 1791
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-eqz p2, :cond_1b

    .line 1793
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_1b

    :cond_11
    and-int/2addr p2, v1

    if-eqz p2, :cond_1b

    .line 1798
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onRotate(II)V
    .registers 3

    .line 1814
    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    if-eqz p1, :cond_7

    .line 1815
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->refreshDialog()V

    :cond_7
    return-void
.end method

.method protected onStart()V
    .registers 3

    const/4 v0, 0x1

    .line 1665
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1666
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1667
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    .line 1669
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    if-eqz v0, :cond_21

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1671
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    const/4 v1, 0x0

    .line 1672
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    :cond_21
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 1697
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1698
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method public refreshDialog()V
    .registers 1

    .line 1809
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->initializeLayout()V

    .line 1810
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->updateList()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 1805
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    return-void
.end method

.method public show()V
    .registers 4

    .line 1703
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    .line 1704
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mShowing:Z

    .line 1705
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->getForceHasTopUi()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHadTopUi:Z

    .line 1706
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForceHasTopUi(Z)V

    .line 1707
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1708
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetX()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1709
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Lcom/android/systemui/MultiListLayout;->getAnimationOffsetY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1710
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1711
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    .line 1712
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1713
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1714
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1715
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1716
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$5VTsKfzFediL_BcyTcZsABCvLU0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$5VTsKfzFediL_BcyTcZsABCvLU0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1717
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1722
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
