.class public Lcom/android/systemui/qs/QSSecurityFooter;
.super Ljava/lang/Object;
.source "QSSecurityFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;,
        Lcom/android/systemui/qs/QSSecurityFooter$H;,
        Lcom/android/systemui/qs/QSSecurityFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDivider:Landroid/view/View;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private mFooterIconId:I

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "QSSecurityFooter"

    const/4 v1, 0x3

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSSecurityFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .registers 7

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$Callback;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    .line 73
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 441
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$1;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    .line 448
    new-instance v0, Lcom/android/systemui/qs/QSSecurityFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSSecurityFooter$2;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 78
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->quick_settings_footer:I

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->footer_text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->footer_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 83
    sget v0, Lcom/android/systemui/R$drawable;->ic_info_outline:I

    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 84
    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    .line 85
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    .line 86
    const-class p2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 87
    const-class p2, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 88
    new-instance p2, Lcom/android/systemui/qs/QSSecurityFooter$H;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, p0, v0, v1}, Lcom/android/systemui/qs/QSSecurityFooter$H;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSSecurityFooter$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    if-nez p1, :cond_7c

    goto :goto_80

    .line 89
    :cond_7c
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getDivider()Landroid/view/View;

    move-result-object v1

    :goto_80
    iput-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    .line 90
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/qs/QSTileHost;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/app/AlertDialog;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QSSecurityFooter;)Lcom/android/systemui/plugins/ActivityStarter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSSecurityFooter;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/ImageView;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSSecurityFooter;)Ljava/lang/CharSequence;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/widget/TextView;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSSecurityFooter;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSSecurityFooter;)Landroid/view/View;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSSecurityFooter;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->handleRefreshState()V

    return-void
.end method

.method private createDialog()V
    .registers 17

    move-object/from16 v6, p0

    .line 255
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v0

    .line 256
    iget-object v1, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v1

    .line 257
    iget-object v2, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 258
    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v2

    .line 259
    iget-object v3, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v3

    .line 260
    iget-object v4, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v4

    .line 261
    iget-object v5, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v5

    .line 262
    iget-object v7, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v7

    .line 263
    iget-object v8, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v8

    .line 265
    new-instance v9, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v10, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    .line 266
    iget-object v9, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 267
    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget-object v11, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v12, Lcom/android/systemui/R$style;->Theme_SystemUI_Dialog:I

    invoke-direct {v9, v11, v12}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v11, Lcom/android/systemui/R$layout;->quick_settings_footer_dialog:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 269
    invoke-virtual {v9, v11, v13, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 270
    iget-object v11, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11, v9}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 271
    iget-object v11, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v11, v14, v13, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 274
    invoke-virtual {v6, v0, v2}, Lcom/android/systemui/qs/QSSecurityFooter;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v11, -0x2

    const/16 v13, 0x8

    if-nez v2, :cond_78

    .line 277
    sget v15, Lcom/android/systemui/R$id;->device_management_disclosures:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_95

    .line 279
    :cond_78
    sget v15, Lcom/android/systemui/R$id;->device_management_disclosures:I

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/View;->setVisibility(I)V

    .line 280
    sget v15, Lcom/android/systemui/R$id;->device_management_warning:I

    .line 281
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 282
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v15, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/qs/QSSecurityFooter;->getSettingsButton()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v11, v10, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 287
    :goto_95
    invoke-virtual {v6, v0, v3, v4}, Lcom/android/systemui/qs/QSSecurityFooter;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_a5

    .line 290
    sget v4, Lcom/android/systemui/R$id;->ca_certs_disclosures:I

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c1

    .line 292
    :cond_a5
    sget v4, Lcom/android/systemui/R$id;->ca_certs_disclosures:I

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 293
    sget v4, Lcom/android/systemui/R$id;->ca_certs_warning:I

    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 294
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    new-instance v10, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v10}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 300
    :goto_c1
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/QSSecurityFooter;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_d1

    .line 302
    sget v5, Lcom/android/systemui/R$id;->network_logging_disclosures:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e5

    .line 304
    :cond_d1
    sget v5, Lcom/android/systemui/R$id;->network_logging_disclosures:I

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 305
    sget v5, Lcom/android/systemui/R$id;->network_logging_warning:I

    .line 306
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 307
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    :goto_e5
    invoke-virtual {v6, v0, v1, v7, v8}, Lcom/android/systemui/qs/QSSecurityFooter;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_f5

    .line 314
    sget v1, Lcom/android/systemui/R$id;->vpn_disclosures:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_111

    .line 316
    :cond_f5
    sget v1, Lcom/android/systemui/R$id;->vpn_disclosures:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 317
    sget v1, Lcom/android/systemui/R$id;->vpn_warning:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 318
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    new-instance v5, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v5}, Landroid/text/method/LinkMovementMethod;-><init>()V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_111
    if-eqz v2, :cond_115

    const/4 v1, 0x1

    goto :goto_116

    :cond_115
    move v1, v12

    :goto_116
    if-eqz v3, :cond_11a

    const/4 v2, 0x1

    goto :goto_11b

    :cond_11a
    move v2, v12

    :goto_11b
    if-eqz v4, :cond_11f

    const/4 v3, 0x1

    goto :goto_120

    :cond_11f
    move v3, v12

    :goto_120
    if-eqz v0, :cond_124

    const/4 v4, 0x1

    goto :goto_125

    :cond_124
    move v4, v12

    :goto_125
    move-object/from16 v0, p0

    move-object v5, v9

    .line 325
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSSecurityFooter;->configSubtitleVisibility(ZZZZLandroid/view/View;)V

    .line 331
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 332
    iget-object v0, v6, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v14, v11}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method private getPositiveButton()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->ok:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSettingsButton()Ljava/lang/String;
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->monitoring_button_view_policies:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleClick()V
    .registers 1

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    const/16 p0, 0x39

    .line 126
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method private handleRefreshState()V
    .registers 14

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    .line 144
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v3

    goto :goto_25

    :cond_24
    move v0, v4

    .line 145
    :goto_25
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v5

    .line 146
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v6

    .line 147
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v7

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v8

    .line 149
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v11

    .line 150
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v12

    .line 151
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 152
    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v2, :cond_59

    if-eqz v0, :cond_63

    :cond_59
    if-nez v6, :cond_63

    if-nez v7, :cond_63

    if-nez v11, :cond_63

    if-eqz v12, :cond_62

    goto :goto_63

    :cond_62
    move v3, v4

    .line 154
    :cond_63
    :goto_63
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    move-object v1, p0

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move-object v7, v11

    move-object v8, v12

    .line 157
    invoke-virtual/range {v1 .. v10}, Lcom/android/systemui/qs/QSSecurityFooter;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 161
    sget v0, Lcom/android/systemui/R$drawable;->ic_info_outline:I

    if-nez v11, :cond_78

    if-eqz v12, :cond_85

    .line 163
    :cond_78
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 164
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_branded_vpn:I

    goto :goto_85

    .line 166
    :cond_83
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_vpn_ic:I

    .line 169
    :cond_85
    :goto_85
    iget v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    if-eq v1, v0, :cond_92

    .line 170
    iput v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterIconId:I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_92
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected configSubtitleVisibility(ZZZZLandroid/view/View;)V
    .registers 6

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p2, :cond_8

    move p0, p1

    :cond_8
    if-eqz p3, :cond_c

    add-int/lit8 p0, p0, 0x1

    :cond_c
    if-eqz p4, :cond_10

    add-int/lit8 p0, p0, 0x1

    :cond_10
    if-eq p0, p1, :cond_13

    return-void

    :cond_13
    const/16 p0, 0x8

    if-eqz p2, :cond_20

    .line 354
    sget p1, Lcom/android/systemui/R$id;->ca_certs_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    if-eqz p3, :cond_2b

    .line 357
    sget p1, Lcom/android/systemui/R$id;->network_logging_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    if-eqz p4, :cond_36

    .line 360
    sget p1, Lcom/android/systemui/R$id;->vpn_subtitle:I

    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_36
    return-void
.end method

.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .registers 4

    if-nez p2, :cond_6

    if-nez p3, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    if-eqz p1, :cond_11

    .line 385
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    if-eqz p3, :cond_1c

    .line 388
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_managed_profile_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_ca_certificate:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_83

    if-nez p3, :cond_6b

    if-nez p4, :cond_6b

    if-eqz p5, :cond_b

    goto :goto_6b

    :cond_b
    if-eqz p6, :cond_27

    if-eqz p7, :cond_27

    if-nez p8, :cond_1a

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_vpns:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 194
    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_vpns:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_27
    if-nez p6, :cond_44

    if-eqz p7, :cond_2c

    goto :goto_44

    :cond_2c
    if-nez p8, :cond_37

    .line 209
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_37
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    :goto_44
    if-nez p8, :cond_57

    .line 199
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_named_vpn:I

    new-array p2, v1, [Ljava/lang/Object;

    if-eqz p6, :cond_4f

    goto :goto_50

    :cond_4f
    move-object p6, p7

    :goto_50
    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 203
    :cond_57
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_named_vpn:I

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p8, p2, v0

    if-eqz p6, :cond_63

    goto :goto_64

    :cond_63
    move-object p6, p7

    :goto_64
    aput-object p6, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6b
    :goto_6b
    if-nez p8, :cond_76

    .line 183
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_management_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_76
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_management_monitoring:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_83
    if-eqz p4, :cond_9d

    if-nez p9, :cond_90

    .line 216
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_managed_profile_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 219
    :cond_90
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_managed_profile_monitoring:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p9, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9d
    if-eqz p3, :cond_a8

    .line 224
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_monitoring:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a8
    if-eqz p6, :cond_b5

    if-eqz p7, :cond_b5

    .line 227
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_vpns:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b5
    if-eqz p7, :cond_c4

    .line 230
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_managed_profile_named_vpn:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p7, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c4
    if-eqz p6, :cond_e2

    if-eqz p2, :cond_d5

    .line 235
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_personal_profile_named_vpn:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 239
    :cond_d5
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->quick_settings_disclosure_named_vpn:I

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    if-eqz p2, :cond_15

    .line 376
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_named_management:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 378
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 396
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->monitoring_description_management_network_logging:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9

    if-nez p3, :cond_6

    if-nez p4, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 402
    :cond_6
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3a

    if-eqz p3, :cond_26

    if-eqz p4, :cond_26

    .line 405
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_two_named_vpns:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_83

    .line 408
    :cond_26
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_named_vpn:I

    new-array v1, v2, [Ljava/lang/Object;

    if-eqz p3, :cond_2f

    goto :goto_30

    :cond_2f
    move-object p3, p4

    :goto_30
    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_83

    :cond_3a
    if-eqz p3, :cond_50

    if-eqz p4, :cond_50

    .line 413
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_two_named_vpns:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v3

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_83

    :cond_50
    if-eqz p4, :cond_62

    .line 416
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_managed_profile_named_vpn:I

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p4, p3, v3

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_83

    :cond_62
    if-eqz p2, :cond_74

    .line 420
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_personal_profile_named_vpn:I

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_83

    .line 423
    :cond_74
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_named_vpn:I

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p3, p4, v3

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 427
    :goto_83
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_vpn_settings_separator:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 428
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$string;->monitoring_description_vpn_settings:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/QSSecurityFooter$VpnSpan;-><init>(Lcom/android/systemui/qs/QSSecurityFooter;)V

    invoke-virtual {v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_15

    .line 248
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_15
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 107
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mFooterText:Landroid/widget/TextView;

    sget v0, Lcom/android/systemui/R$dimen;->qs_tile_text_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public refreshState()V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHandler:Lcom/android/systemui/qs/QSSecurityFooter$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    if-eqz p1, :cond_d

    .line 99
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    goto :goto_14

    .line 102
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mCallback:Lcom/android/systemui/qs/QSSecurityFooter$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_14
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->createDialog()V

    return-void
.end method
