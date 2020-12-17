.class public Lcom/android/systemui/globalactions/GlobalActionsImpl;
.super Ljava/lang/Object;
.source "GlobalActionsImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/GlobalActions;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabled:Z

.field private mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field private final mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field private final mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/policy/ExtensionController$Extension<",
            "Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    .line 58
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 60
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 61
    const-class p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionController;

    const-class v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 62
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    move-result-object p1

    const-class v0, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 63
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->withPlugin(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;

    .line 64
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;->build()Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz v0, :cond_17

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->destroy()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    :cond_17
    return-void
.end method

.method public disable(IIIZ)V
    .registers 5

    and-int/lit8 p2, p3, 0x8

    if-eqz p2, :cond_6

    const/4 p2, 0x1

    goto :goto_7

    :cond_6
    const/4 p2, 0x0

    .line 141
    :goto_7
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    if-ne p1, p3, :cond_1f

    iget-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-ne p2, p1, :cond_14

    goto :goto_1f

    .line 142
    :cond_14
    iput-boolean p2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz p2, :cond_1f

    .line 143
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-eqz p0, :cond_1f

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->dismissDialog()V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
    .registers 5

    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDisabled:Z

    if-eqz v0, :cond_5

    return-void

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    if-nez v0, :cond_12

    .line 80
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 82
    :cond_12
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mGlobalActions:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 83
    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mPanelExtension:Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;

    .line 84
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/ExtensionController$Extension;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/GlobalActionsPanelPlugin;

    .line 82
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->showDialog(ZZLcom/android/systemui/plugins/GlobalActionsPanelPlugin;)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    return-void
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .registers 8

    .line 90
    new-instance p2, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;

    invoke-direct {p2}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;-><init>()V

    const/16 v0, 0xf2

    .line 91
    invoke-virtual {p2, v0}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setAlpha(I)V

    .line 93
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog_GlobalActions:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 98
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v4, v4, 0x700

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 102
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 103
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, -0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 105
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v2, 0x7e4

    .line 106
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    const/4 v2, 0x2

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const v2, 0x10d0120

    .line 108
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 115
    invoke-virtual {v1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x1030004

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    const v1, 0x10900f9

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    .line 123
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 124
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    const p0, 0x102000d

    .line 126
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    .line 127
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const p0, 0x1020014

    .line 128
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 129
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_96

    const p1, 0x1040607

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    :cond_96
    const-class p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result p0

    invoke-virtual {p2, p0, v1}, Lcom/android/internal/colorextraction/drawable/ScrimDrawable;->setColor(IZ)V

    .line 135
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
