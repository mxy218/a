.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$NearestTouchFrame$KtkvB6kuUFBlaLB_chuEtrCrZqA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/util/Pair;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$findNearestChild$2(Landroid/util/Pair;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
