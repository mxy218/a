.class public Lcom/android/systemui/qs/tiles/CellularTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CellularTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;,
        Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;,
        Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$SignalState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field private final mDataController:Lcom/android/settingslib/net/DataUsageController;

.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

.field private final mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field private final mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/NetworkController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .registers 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 67
    new-instance p1, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    .line 378
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    const/4 v1, 0x2

    new-array v2, v1, [I

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_disable:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_disable:I

    const/4 v5, 0x1

    aput v3, v2, v5

    new-array v3, v1, [I

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_data_enable_anim:I

    aput v6, v3, v4

    sget v6, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_enable_anim:I

    aput v6, v3, v5

    new-array v6, v5, [I

    sget v7, Lcom/android/systemui/R$drawable;->qs_shortcut_data_on:I

    aput v7, v6, v4

    invoke-direct {p1, p0, v2, v3, v6}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 383
    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;

    new-array v2, v1, [I

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_enable:I

    aput v3, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_enable:I

    aput v3, v2, v5

    new-array v1, v1, [I

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_disable_anim:I

    aput v3, v1, v4

    sget v3, Lcom/android/systemui/R$drawable;->qs_shortcut_data_opaque_disable_anim:I

    aput v3, v1, v5

    new-array v3, v5, [I

    sget v5, Lcom/android/systemui/R$drawable;->qs_shortcut_data_off:I

    aput v5, v3, v4

    invoke-direct {p1, p0, v2, v1, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimatedVectorIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;[I[I[I)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 75
    iput-object p3, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 76
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataController()Lcom/android/settingslib/net/DataUsageController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 77
    new-instance p1, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    .line 78
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/settingslib/net/DataUsageController;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Intent;
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getCellularSettingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6

    .line 226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 227
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 229
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 230
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->mobile_carrier_text_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method private getCellularSettingIntent()Landroid/content/Intent;
    .registers 5

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "codeaurora.intent.action.MOBILE_NETWORK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 315
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string v2, "CellularTile"

    if-eqz p0, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 316
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    const-string/jumbo v3, "slot_id"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using vendor network settings for sub: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 319
    :cond_3a
    new-instance v0, Landroid/content/Intent;

    const-string p0, "android.settings.NETWORK_OPERATOR_SETTINGS"

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p0, -0x1

    if-eq v1, p0, :cond_4d

    .line 322
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    const-string v3, "android.provider.extra.SUB_ID"

    .line 321
    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    :cond_4d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using default network settings for sub: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_61
    return-object v0
.end method

.method private getMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;
    .registers 6

    .line 237
    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz v0, :cond_2c

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 238
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->data_connection_roaming:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->mobile_data_text_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 242
    :cond_2c
    iget-boolean v0, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->roaming:Z

    if-eqz v0, :cond_39

    .line 243
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->data_connection_roaming:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_39
    iget-object p0, p1, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private maybeShowDisableDialog()V
    .registers 8

    .line 118
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "QsHasTurnedOffMobileData"

    invoke-static {v0, v2, v1}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 120
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    return-void

    .line 123
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getMobileDataNetworkName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->mobile_data_disable_message_default_carrier:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_25
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/systemui/R$string;->mobile_data_disable_title:I

    .line 128
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->mobile_data_disable_message:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v0, v6, v1

    .line 129
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104007c

    new-instance v2, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$oLJGrvqAwKFs9wNM4MvnfZ_a1QQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$CellularTile$oLJGrvqAwKFs9wNM4MvnfZ_a1QQ;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 139
    invoke-static {p0, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;Z)V

    .line 140
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->registerDismissListener(Landroid/app/Dialog;)V

    .line 141
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;
    .registers 2

    .line 88
    new-instance p0, Lcom/android/systemui/qs/SignalTileView;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .registers 1

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getCellularSettingIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x73

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_cellular_detail_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v0, :cond_b

    return-void

    .line 110
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->maybeShowDisableDialog()V

    goto :goto_1d

    .line 113
    :cond_17
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    :goto_1d
    return-void
.end method

.method protected handleSecondaryClick()V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    goto :goto_17

    .line 150
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->getCellularSettingIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_17
    return-void
.end method

.method public handleSetListening(Z)V
    .registers 2

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V
    .registers 8

    .line 162
    check-cast p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    if-nez p2, :cond_a

    .line 164
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mSignalCallback:Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;->access$200(Lcom/android/systemui/qs/tiles/CellularTile$CellSignalCallback;)Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    move-result-object p2

    .line 167
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    sget v1, Lcom/android/systemui/R$string;->mobile_data:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataSupported()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 170
    invoke-virtual {v1}, Lcom/android/settingslib/net/DataUsageController;->isMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, v3

    .line 171
    :goto_2d
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_37

    .line 172
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    if-eqz v4, :cond_37

    move v4, v2

    goto :goto_38

    :cond_37
    move v4, v3

    :goto_38
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    if-eqz v1, :cond_42

    .line 173
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    if-eqz v4, :cond_42

    move v4, v2

    goto :goto_43

    :cond_42
    move v4, v3

    :goto_43
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 174
    const-class v4, Landroid/widget/Switch;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 183
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    if-eqz v4, :cond_60

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 187
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 188
    sget p0, Lcom/android/systemui/R$string;->keyguard_missing_sim_message_short:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_9e

    .line 189
    :cond_60
    iget-boolean v4, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz v4, :cond_73

    .line 191
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 193
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 194
    sget p0, Lcom/android/systemui/R$string;->status_bar_airplane:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_9e

    :cond_73
    if-eqz v1, :cond_90

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mEnable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v1, 0x2

    .line 199
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 202
    iget-boolean v1, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->multipleSubs:Z

    if-eqz v1, :cond_83

    iget-object v1, p2, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataSubscriptionName:Ljava/lang/CharSequence;

    goto :goto_85

    :cond_83
    const-string v1, ""

    .line 203
    :goto_85
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->getMobileDataContentName(Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 200
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->appendMobileDataType(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_9e

    .line 206
    :cond_90
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDisable:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 208
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 209
    sget p0, Lcom/android/systemui/R$string;->cell_data_off:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 216
    :goto_9e
    iget p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne p0, v2, :cond_a9

    .line 217
    sget p0, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_ab

    .line 219
    :cond_a9
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 222
    :goto_ab
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .registers 3

    .line 59
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/CellularTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$SignalState;Ljava/lang/Object;)V

    return-void
.end method

.method public isAvailable()Z
    .registers 1

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasMobileDataFeature()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$maybeShowDisableDialog$0$CellularTile(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 134
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    const-string p1, "QsHasTurnedOffMobileData"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;
    .registers 1

    .line 83
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 1

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CellularTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    move-result-object p0

    return-object p0
.end method
