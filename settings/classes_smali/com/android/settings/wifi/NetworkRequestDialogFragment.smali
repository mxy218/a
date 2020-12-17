.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;
    }
.end annotation


# static fields
.field static final EXTRA_APP_NAME:Ljava/lang/String; = "com.android.settings.wifi.extra.APP_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAccessPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

.field private mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSpecifiedSsid:Z

.field private mShowLimitedItem:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

.field private mWaitingConnectCallback:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    .line 318
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->showAllButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .registers 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->hideProgressIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V
    .registers 2

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    return p0
.end method

.method private getDialogAdapter()Landroid/widget/BaseAdapter;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .registers 5

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "com.android.settings.wifi.extra.APP_NAME"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    const-string v0, ""

    :goto_13
    const v1, 0x7f120e93

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 178
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideProgressIcon()V
    .registers 2

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    if-nez p0, :cond_9

    return-void

    :cond_9
    const v0, 0x7f0a04d3

    .line 294
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_17

    const/16 v0, 0x8

    .line 296
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_17
    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;
    .registers 1

    .line 96
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    return-object v0
.end method

.method private renewAccessPointList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_a

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->updateKeys(Ljava/util/List;)V

    .line 449
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    .line 450
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 451
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private showAllButton()V
    .registers 2

    .line 260
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 v0, -0x3

    .line 265
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_14
    return-void
.end method

.method private updateConnectButton(Z)V
    .registers 3

    .line 273
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-nez v0, :cond_5

    return-void

    .line 277
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    check-cast p0, Landroid/app/AlertDialog;

    if-nez p0, :cond_e

    return-void

    :cond_e
    const/4 v0, -0x1

    .line 282
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 284
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_18
    return-void
.end method


# virtual methods
.method getAccessPointList()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    .line 187
    :cond_b
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x55d

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$NetworkRequestDialogFragment(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$NetworkRequestDialogFragment(Landroid/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    .line 139
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$NetworkRequestDialogFragment(Landroid/widget/Button;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    .line 150
    iput-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    const/4 p2, 0x0

    .line 151
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    const/16 p0, 0x8

    .line 153
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$4$NetworkRequestDialogFragment(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .registers 4

    const/4 p2, -0x3

    .line 147
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/16 v0, 0x8

    .line 148
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-boolean p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz p2, :cond_27

    const/4 p2, -0x1

    .line 158
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    .line 159
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p0, 0x0

    .line 165
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_27
    return-void
.end method

.method notifyAdapterRefresh()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 456
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 457
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_d
    return-void
.end method

.method public onAbort()V
    .registers 2

    .line 415
    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1  # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 223
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 228
    :cond_10
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p0, :cond_17

    .line 229
    invoke-interface {p0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_17
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object p1

    .line 197
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 200
    :cond_b
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez v0, :cond_10

    return-void

    .line 204
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_35

    .line 205
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 206
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    if-nez p2, :cond_27

    const/4 p2, 0x0

    .line 208
    invoke-static {p1, p2, p2}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    :cond_27
    if-eqz p2, :cond_35

    .line 213
    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    const/4 p1, 0x1

    .line 215
    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    const/4 p1, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    :cond_35
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0238

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a04d4

    .line 108
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_33

    const-string v4, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    .line 113
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    :cond_33
    const v2, 0x7f0a04d3

    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 118
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 121
    new-instance v2, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    const v4, 0x7f0d0268

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, p0, p1, v4, v5}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    .line 124
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    .line 126
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120442

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    .line 127
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e92

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz v0, :cond_79

    const v0, 0x7f121879

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    :cond_79
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$VvNcfZ4DU-7x7u4l25yeWJgN_o8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$VvNcfZ4DU-7x7u4l25yeWJgN_o8;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/app/AlertDialog;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    invoke-virtual {p0, v3}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 145
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 251
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onDestroy()V

    .line 253
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz v0, :cond_d

    .line 254
    invoke-virtual {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onDestroy()V

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_d
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_14

    .line 427
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 428
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    :cond_14
    return-void
.end method

.method public onPause()V
    .registers 3

    .line 235
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1e

    .line 241
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    .line 244
    :cond_1e
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz p0, :cond_25

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onPause()V

    :cond_25
    return-void
.end method

.method public onResume()V
    .registers 5

    .line 302
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onResume()V

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    .line 305
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1a

    .line 307
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;Landroid/os/Handler;)V

    .line 310
    :cond_1a
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 312
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_35

    .line 313
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    .line 315
    :cond_35
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onResume()V

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    const/4 p1, 0x0

    .line 474
    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    const/4 p1, 0x1

    .line 475
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    .line 463
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_14

    const p1, 0x7f120e90

    const/4 v0, 0x0

    .line 465
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 467
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_14
    return-void
.end method

.method protected stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .registers 5

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 336
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 342
    :cond_f
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v0

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DIALOG_ERROR_TYPE"

    .line 344
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 345
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    .line 347
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 346
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
