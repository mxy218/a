.class public final synthetic Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;

    invoke-direct {v0}, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;-><init>()V

    sput-object v0, Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;->INSTANCE:Lcom/android/settingslib/widget/-$$Lambda$BarChartInfo$2CrHVNAna8TvSeyBIL19oCkthVU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/settingslib/widget/BarChartInfo;->lambda$new$0(I)[Lcom/android/settingslib/widget/BarViewInfo;

    move-result-object p0

    return-object p0
.end method
