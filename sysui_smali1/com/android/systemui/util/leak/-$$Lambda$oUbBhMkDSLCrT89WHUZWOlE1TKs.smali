.class public final synthetic Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;

    invoke-direct {v0}, Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;-><init>()V

    sput-object v0, Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;->INSTANCE:Lcom/android/systemui/util/leak/-$$Lambda$oUbBhMkDSLCrT89WHUZWOlE1TKs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/android/systemui/util/leak/TrackedObjects;->isTrackedObject(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method