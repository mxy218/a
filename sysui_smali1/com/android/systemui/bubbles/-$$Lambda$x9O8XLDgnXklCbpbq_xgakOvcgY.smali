.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;->INSTANCE:Lcom/android/systemui/bubbles/-$$Lambda$x9O8XLDgnXklCbpbq_xgakOvcgY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .registers 2

    check-cast p1, Lcom/android/systemui/bubbles/Bubble;

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/Bubble;->getLastActivity()J

    move-result-wide p0

    return-wide p0
.end method
