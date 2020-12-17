.class public Lcom/android/settingslib/widget/BarChartInfo;
.super Ljava/lang/Object;
.source "BarChartInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/BarChartInfo$Builder;
    }
.end annotation


# instance fields
.field private mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

.field private final mDetails:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mDetailsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mEmptyText:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final mTitle:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;)V
    .registers 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$000(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    .line 94
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$100(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    .line 95
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$200(Lcom/android/settingslib/widget/BarChartInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    .line 96
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$300(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    .line 98
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 99
    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo$Builder;->access$400(Lcom/android/settingslib/widget/BarChartInfo$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/settingslib/widget/BarViewInfo;

    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    :cond_33
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;Lcom/android/settingslib/widget/BarChartInfo$1;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/BarChartInfo;-><init>(Lcom/android/settingslib/widget/BarChartInfo$Builder;)V

    return-void
.end method

.method static synthetic lambda$new$0(I)[Lcom/android/settingslib/widget/BarViewInfo;
    .registers 1

    .line 99
    new-array p0, p0, [Lcom/android/settingslib/widget/BarViewInfo;

    return-object p0
.end method


# virtual methods
.method public getBarViewInfos()[Lcom/android/settingslib/widget/BarViewInfo;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-object p0
.end method

.method public getDetails()I
    .registers 1

    .line 57
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetails:I

    return p0
.end method

.method public getDetailsOnClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mDetailsOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public getEmptyText()I
    .registers 1

    .line 67
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mEmptyText:I

    return p0
.end method

.method public getTitle()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/android/settingslib/widget/BarChartInfo;->mTitle:I

    return p0
.end method

.method setBarViewInfos([Lcom/android/settingslib/widget/BarViewInfo;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/android/settingslib/widget/BarChartInfo;->mBarViewInfos:[Lcom/android/settingslib/widget/BarViewInfo;

    return-void
.end method
