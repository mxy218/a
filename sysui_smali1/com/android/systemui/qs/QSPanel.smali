.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/LinearLayout;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/qs/QSHost$Callback;
.implements Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$QSTileLayout;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field private mBrightnessHeightPx:I

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBrightnessPaddingSide:I

.field protected final mBrightnessView:Landroid/view/View;

.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/qs/MzQSDetail$Callback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mDetailOffsetY:I

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDivider:Landroid/view/View;

.field private mDumpController:Lcom/android/systemui/DumpController;

.field protected mExpanded:Z

.field protected mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private mGridContentVisible:Z

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHasMockTile:Z

.field protected mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mKeyguardShowing:Z

.field protected mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavigationBarBottomHeight:I

.field private mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

.field private mQSPanelNormalHeight:I

.field private mRealDefaultDisplayX:I

.field private mRealDefaultDisplayY:I

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetDetailPosition:Ljava/lang/Runnable;

.field private mStatusBarHeaderViewHeight:I

.field protected mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

.field private mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private mTilesEditButton:Landroid/widget/ImageView;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 130
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 95
    new-instance p2, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 96
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 1045
    new-instance v0, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSetDetailPosition:Ljava/lang/Runnable;

    .line 1076
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->addDivider()V

    const-string/jumbo p2, "window"

    .line 153
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mWindowManager:Landroid/view/WindowManager;

    .line 154
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->qs_mz_tile_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/flyme/systemui/qs/MzQSTileLayout;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    .line 156
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setListening(Z)V

    .line 157
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p2, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 158
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->mz_quick_settings_brightness_dialog:I

    invoke-virtual {p2, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 162
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setBrightnessView(Landroid/view/View;)V

    .line 166
    new-instance p2, Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    .line 167
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    new-instance p2, Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 170
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p2, v0, v1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    .line 171
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mDumpController:Lcom/android/systemui/DumpController;

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 175
    new-instance p2, Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p2, p1, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSPanel;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mNavigationBarBottomHeight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSPanel;)Lcom/flyme/systemui/qs/MzQSDetail;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Z)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;Z)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$H;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/customize/QSCustomizer;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanel;)I
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getQSPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSPanel;)I
    .registers 1

    .line 84
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mRealDefaultDisplayY:I

    return p0
.end method

.method private static exactly(I)I
    .registers 2

    const/high16 v0, 0x40000000  # 2.0f

    .line 970
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private fireScanStateChanged(Z)V
    .registers 3

    .line 760
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    .line 761
    invoke-interface {v0, p1}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onScanStateChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V
    .registers 13

    .line 899
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 900
    invoke-interface/range {v1 .. v6}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .registers 3

    .line 747
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    .line 748
    invoke-interface {v0, p1}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onToggleStateChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private getPanelWidth()I
    .registers 1

    .line 962
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result p0

    return p0
.end method

.method private getQSPadding()I
    .registers 2

    .line 966
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getPanelWidth()I

    move-result p0

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .registers 4

    const/4 v0, 0x0

    .line 284
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 285
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 286
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 289
    :cond_2b
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p1

    goto :goto_6

    :cond_5
    move-object v1, v0

    .line 702
    :goto_6
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    if-eqz p2, :cond_d

    .line 705
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    :cond_d
    move-object v2, v0

    if-eqz p1, :cond_13

    iget p1, p1, Lcom/android/systemui/qs/QSPanel$Record;->row:I

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    move v5, p1

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;IIIZ)V

    return-void
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V
    .registers 12

    .line 683
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-ne v0, p2, :cond_e

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v0, p1, :cond_e

    return-void

    :cond_e
    if-eqz p2, :cond_1d

    .line 686
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 687
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-nez v0, :cond_1d

    return-void

    .line 689
    :cond_1d
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0, p2}, Lcom/android/systemui/plugins/qs/QSTile;->setDetailListening(Z)V

    .line 695
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getQSPadding()I

    move-result v1

    sub-int v5, v0, v1

    .line 696
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    sub-int v6, v0, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p3

    .line 698
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    return-void
.end method

.method private logTiles()V
    .registers 6

    const/4 v0, 0x0

    .line 727
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 728
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 729
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    .line 730
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 729
    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method

.method private updatePageIndicator()V
    .registers 1

    return-void
.end method

.method private updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    const/4 p0, 0x1

    .line 271
    invoke-static {p2, p0}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_9

    const/4 p0, 0x0

    goto :goto_b

    :cond_9
    const/16 p0, 0x8

    :goto_b
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/qs/MzQSDetail$Callback;)V
    .registers 2

    .line 994
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addDivider()V
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->qs_divider:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    .line 181
    invoke-static {p0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getColorForState(Landroid/content/Context;I)I

    move-result p0

    .line 180
    invoke-static {v1, p0}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;
    .registers 5

    .line 553
    new-instance v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 554
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 555
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 556
    new-instance p1, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 594
    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    .line 595
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    .line 596
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-virtual {p1, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->init(Lcom/android/systemui/plugins/qs/QSTile;)V

    .line 599
    new-instance p1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 622
    iget-object p2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    instance-of v1, p2, Lcom/flyme/systemui/qs/MzQSTileView;

    if-eqz v1, :cond_30

    .line 623
    check-cast p2, Lcom/flyme/systemui/qs/MzQSTileView;

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/qs/MzQSTileView;->setLongClick(Landroid/view/View$OnLongClickListener;)V

    .line 627
    :cond_30
    iget-object p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 628
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p0, :cond_41

    .line 631
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    :cond_41
    return-object v0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 5

    .line 767
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 768
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_32

    .line 770
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 771
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->click()V

    goto :goto_32

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_32
    :goto_32
    return-void
.end method

.method public closeDetail()V
    .registers 3

    .line 656
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 658
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide()V

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 661
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public closeDetailImmediately()V
    .registers 4

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v1, 0x0

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .registers 3

    .line 544
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p0

    return-object p0
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 3

    .line 540
    iget-object p0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {p0, p2}, Lcom/android/systemui/plugins/qs/QSTileView;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Tile records:"

    .line 835
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 837
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_27

    const-string v1, "    "

    .line 838
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 839
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    :cond_52
    return-void
.end method

.method public fireShowingDetailStateChanged(Z)V
    .registers 3

    .line 906
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    .line 907
    invoke-interface {v0, p1}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onShowingDetailStateChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public fireShowingTilesEdit(Z)V
    .registers 3

    .line 912
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/qs/MzQSDetail$Callback;

    .line 913
    invoke-interface {v0, p1}, Lcom/flyme/systemui/qs/MzQSDetail$Callback;->onShowingTilesEdit(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getDesiredHeight()I
    .registers 3

    .line 936
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mRealDefaultDisplayY:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mKeyguardShowing:Z

    if-eqz v1, :cond_b

    const/4 p0, 0x0

    goto :goto_d

    :cond_b
    iget p0, p0, Lcom/android/systemui/qs/QSPanel;->mNavigationBarBottomHeight:I

    :goto_d
    sub-int/2addr v0, p0

    return v0
.end method

.method public getDivider()Landroid/view/View;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDivider:Landroid/view/View;

    return-object p0
.end method

.method public getFooter()Lcom/android/systemui/qs/QSSecurityFooter;
    .registers 1

    .line 791
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .registers 1

    .line 362
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .registers 1

    .line 778
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    return-object p0
.end method

.method protected handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;ZZ)V
    .registers 12

    .line 669
    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_a

    .line 670
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;ZZ)V

    goto :goto_1d

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    .line 675
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 676
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    move v5, v0

    move v6, v1

    goto :goto_16

    :cond_14
    move v5, v0

    move v6, v5

    :goto_16
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v7, p3

    .line 678
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZIIZ)V

    :goto_1d
    return-void
.end method

.method public isClosingCustomize()Z
    .registers 1

    .line 1006
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isAnimatingToCloseCustomize()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isShowingCustomize()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQsCustomize()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isAnimatingToOpenCustomize()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public isShowingDetail()Z
    .registers 1

    .line 958
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    .line 948
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mNavigationBarBottomHeight:I

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 229
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 230
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "qs_show_brightness"

    .line 231
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_1f

    .line 234
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 236
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_26

    .line 237
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 239
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpController:Lcom/android/systemui/DumpController;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p0}, Lcom/android/systemui/DumpController;->addListener(Lcom/android/systemui/Dumpable;)V

    :cond_2d
    return-void
.end method

.method public onBrightnessMirrorReinflated(Landroid/view/View;)V
    .registers 2

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 404
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSSecurityFooter;->onConfigurationChanged()V

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 244
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz v0, :cond_12

    .line 246
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 248
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 249
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_18

    .line 251
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_31

    .line 252
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 254
    :cond_31
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDumpController:Lcom/android/systemui/DumpController;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p0}, Lcom/android/systemui/DumpController;->removeListener(Lcom/android/systemui/Dumpable;)V

    .line 255
    :cond_38
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 975
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 976
    iget p1, p0, Lcom/android/systemui/qs/QSPanel;->mRealDefaultDisplayX:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getPanelWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 977
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    iget p3, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingSide:I

    add-int/2addr p3, p1

    iget p4, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelNormalHeight:I

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p4, p5

    iget-object p5, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    .line 978
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingSide:I

    add-int/2addr p5, v0

    add-int/2addr p5, p1

    iget p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelNormalHeight:I

    .line 977
    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/view/View;->layout(IIII)V

    .line 980
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 981
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mSetDetailPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_32
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->getPanelWidth()I

    move-result p1

    .line 196
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingSide:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-static {p1}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result p1

    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    .line 198
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_29
    if-ge v0, p2, :cond_3f

    .line 201
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3c

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p1, v1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 205
    :cond_3f
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result p2

    if-eqz p2, :cond_54

    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p2}, Lcom/flyme/systemui/qs/MzQSTileLayout;->isQSPanelEditAnimating()Z

    move-result p2

    if-nez p2, :cond_54

    .line 206
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    .line 209
    :cond_54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTilesChanged()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    .line 1020
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "custom(com.android.cts.verifier/.qstiles.MockTileService)"

    if-ge v1, v2, :cond_22

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1021
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_23

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    const/4 v0, 0x0

    .line 1027
    :goto_23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTilesChanged "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mHasMockTile "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mHasMockTile:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QSPanel"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4f

    .line 1029
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mHasMockTile:Z

    if-nez p1, :cond_4f

    .line 1030
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/QSTileHost;->addTile(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4f
    if-nez v0, :cond_5a

    .line 1031
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mHasMockTile:Z

    if-eqz p1, :cond_5a

    .line 1032
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    .line 1035
    :cond_5a
    :goto_5a
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mHasMockTile:Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "qs_show_brightness"

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 266
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->updateViewVisibilityForTuningValue(Landroid/view/View;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .registers 5

    .line 275
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 279
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    const/4 v0, 0x0

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_1b
    return-void
.end method

.method public refreshAllTiles()V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 495
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 496
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_b

    .line 498
    :cond_1d
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    return-void
.end method

.method public releaseBirghtnessCallback()V
    .registers 1

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->releaseBirghtnessCallback()V

    return-void
.end method

.method public setBrightnessListening(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 487
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    goto :goto_d

    .line 489
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    :goto_d
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_7

    .line 294
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 296
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .line 297
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_10

    .line 298
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 300
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateBrightnessMirror()V

    return-void
.end method

.method protected setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v0, :cond_5

    return-void

    .line 711
    :cond_5
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 712
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v0, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean p1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 714
    :goto_16
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .registers 4

    .line 428
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 429
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 437
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setExpanded(Z)V

    .line 439
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x6f

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    .line 440
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p1, :cond_1d

    .line 441
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    goto :goto_20

    .line 443
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    :goto_20
    return-void
.end method

.method setGridContentVisibility(Z)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x4

    .line 719
    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 720
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v1, p1, :cond_13

    .line 721
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 723
    :cond_13
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 4

    .line 318
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->refreshAllTiles()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 325
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/QSCustomizer;

    if-eqz p1, :cond_25

    .line 327
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/QSCustomizer;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 330
    :cond_25
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mKeyguardShowing:Z

    .line 941
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p0, :cond_9

    .line 942
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setKeyguardShowing(Z)V

    :cond_9
    return-void
.end method

.method public setListening(Z)V
    .registers 3

    if-eqz p1, :cond_5

    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 465
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v0, p1, :cond_a

    return-void

    .line 466
    :cond_a
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 467
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p0, :cond_13

    .line 468
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setListening(Z)V

    :cond_13
    return-void
.end method

.method public setListening(ZZ)V
    .registers 3

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 479
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getFooter()Lcom/android/systemui/qs/QSSecurityFooter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setBrightnessListening(Z)V

    return-void
.end method

.method public setMargins(I)V
    .registers 5

    const/4 v0, 0x0

    .line 799
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 800
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 801
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eq v1, v2, :cond_19

    .line 802
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 804
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public setQSDetail(Lcom/flyme/systemui/qs/MzQSDetail;)V
    .registers 2

    .line 986
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    return-void
.end method

.method public setQSPanelNormalHeight(I)V
    .registers 2

    .line 953
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mQSPanelNormalHeight:I

    .line 954
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setQSPanelNormalHeight(I)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 522
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 530
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {v2, v1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 531
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_6

    .line 533
    :cond_1f
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 534
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 535
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/qs/QSPanel$TileRecord;

    goto :goto_28

    :cond_38
    return-void
.end method

.method public setTilesEditButton(Landroid/widget/ImageView;)V
    .registers 2

    .line 932
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTilesEditButton:Landroid/widget/ImageView;

    return-void
.end method

.method public setVisibleViewScale(F)V
    .registers 2

    .line 1002
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setVisibleViewScale(F)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showCustomize(Z)V
    .registers 6

    .line 918
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz v0, :cond_4d

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const-string/jumbo v2, "vendor.meizu.sys.cts_state"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QSPanel"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 921
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 923
    :cond_2f
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/MzQSTileLayout;->showQsCustomize(Z)Z

    move-result v0

    .line 924
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTilesEditButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 925
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_44

    .line 926
    sget p1, Lcom/android/systemui/R$drawable;->qs_tiles_edit:I

    goto :goto_46

    :cond_44
    sget p1, Lcom/android/systemui/R$drawable;->qs_tiles_normal:I

    .line 925
    :goto_46
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4d
    return-void
.end method

.method protected showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .registers 5

    .line 518
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V
    .registers 9

    const/4 v0, 0x0

    .line 502
    aget v1, p3, v0

    const/4 v2, 0x1

    .line 503
    aget v3, p3, v2

    .line 504
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 506
    new-instance v4, Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$Record;-><init>()V

    .line 507
    iput-object p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    .line 508
    aget p2, p3, v0

    sub-int p2, v1, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 509
    aget p2, p3, v2

    sub-int p2, v3, p2

    iput p2, v4, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 511
    aput v1, p3, v0

    .line 512
    aput v3, p3, v2

    .line 514
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .registers 1

    .line 795
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .registers 3

    .line 639
    new-instance v0, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateBrightnessMirror()V
    .registers 4

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_22

    .line 413
    sget v0, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSliderView;

    .line 414
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->brightness_slider:I

    .line 415
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSliderView;->setMirror(Lcom/android/systemui/settings/ToggleSliderView;)V

    .line 417
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/settings/ToggleSliderView;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_22
    return-void
.end method

.method public updateDetailPosition()V
    .registers 2

    .line 990
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mSetDetailPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateResources()V
    .registers 4

    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 370
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    if-eqz v1, :cond_1f

    .line 372
    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_25

    .line 373
    :cond_1f
    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_25
    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingSide:I

    if-eqz v1, :cond_30

    .line 375
    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_height_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_36

    .line 376
    :cond_30
    sget v2, Lcom/android/systemui/R$dimen;->qs_brightness_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_36
    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessHeightPx:I

    if-eqz v1, :cond_41

    .line 379
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_header_height_landscape:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_47

    .line 380
    :cond_41
    sget v2, Lcom/android/systemui/R$dimen;->status_bar_header_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_47
    iput v2, p0, Lcom/android/systemui/qs/QSPanel;->mStatusBarHeaderViewHeight:I

    if-eqz v1, :cond_52

    .line 381
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_scroll_offset_y_landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_58

    .line 382
    :cond_52
    sget v1, Lcom/android/systemui/R$dimen;->qs_detail_scroll_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_58
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailOffsetY:I

    .line 384
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 386
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mRealDefaultDisplayY:I

    .line 387
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mRealDefaultDisplayX:I

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->updatePageIndicator()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 392
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    goto :goto_79

    .line 394
    :cond_8b
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v0, :cond_92

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 397
    :cond_92
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    if-eqz p0, :cond_99

    .line 398
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->updateResources()Z

    :cond_99
    return-void
.end method
