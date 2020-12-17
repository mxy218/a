.class public Lcom/android/systemui/qs/QuickQSPanel;
.super Lcom/android/systemui/qs/QSPanel;
.source "QuickQSPanel.java"


# static fields
.field private static mDefaultMaxTiles:I


# instance fields
.field private mDisabledByPolicy:Z

.field private mMaxTiles:I

.field private final mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "view_context"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/DumpController;)V

    .line 154
    new-instance p1, Lcom/android/systemui/qs/QuickQSPanel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickQSPanel$1;-><init>(Lcom/android/systemui/qs/QuickQSPanel;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz p1, :cond_15

    .line 63
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 65
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_38

    move p1, p2

    .line 66
    :goto_1b
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p1, p3, :cond_33

    .line 67
    iget-object p3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-virtual {p3, v0}, Lcom/flyme/systemui/qs/MzQSTileLayout;->removeTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1b

    .line 69
    :cond_33
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    :cond_38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/systemui/R$integer;->quick_qs_panel_max_columns:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    sput p1, Lcom/android/systemui/qs/QuickQSPanel;->mDefaultMaxTiles:I

    .line 73
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    iget-boolean p3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {p1, p3}, Lcom/flyme/systemui/qs/MzQSTileLayout;->setListening(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/flyme/systemui/qs/MzQSTileLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 75
    invoke-super {p0, p2, p2, p2, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public static getNumQuickTiles(Landroid/content/Context;)I
    .registers 3

    .line 162
    const-class p0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    sget v0, Lcom/android/systemui/qs/QuickQSPanel;->mDefaultMaxTiles:I

    const-string/jumbo v1, "sysui_qqs_count"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected addDivider()V
    .registers 1

    return-void
.end method

.method protected drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .registers 4

    .line 110
    instance-of v0, p2, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    if-eqz v0, :cond_12

    .line 111
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 112
    invoke-virtual {p2, v0}, Lcom/android/systemui/plugins/qs/QSTile$State;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    const/4 p2, 0x0

    .line 114
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 115
    iput-boolean p2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    move-object p2, v0

    .line 118
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 89
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onAttachedToWindow()V

    .line 90
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string/jumbo v1, "sysui_qqs_count"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 95
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onDetachedFromWindow()V

    .line 96
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mNumTiles:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string p2, "qs_show_brightness"

    .line 136
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p2, "0"

    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .registers 3

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    return-void
.end method

.method public setMaxTiles(I)V
    .registers 2

    .line 128
    iput p1, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    .line 129
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/qs/QSTileHost;

    if-eqz p1, :cond_d

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setTiles(Ljava/util/Collection;)V

    :cond_d
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5

    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/qs/QuickQSPanel;->mMaxTiles:I

    if-ne v1, v2, :cond_9

    :cond_20
    const/4 p1, 0x1

    .line 151
    invoke-super {p0, v0, p1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickQSPanel;->mDisabledByPolicy:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_e

    .line 181
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_d

    return-void

    :cond_d
    move p1, v1

    .line 186
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected shouldShowDetail()Z
    .registers 1

    .line 105
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
