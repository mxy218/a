.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$NP6mvtRuXVTLLChUNbbl4JUIMyU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$1(Landroid/util/Pair;)I

    move-result p0

    return p0
.end method
